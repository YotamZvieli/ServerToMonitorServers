import java.net.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

public class HealthMonitor {
    private static Map<String,WebServer> webServerMap = new HashMap<>();
    public static void main(String[] args) throws Exception {
        long StartTime;
        long EndTime;
        int code;
        long Latency;
        System.out.println("Monitor on air");
        while (true) {
            LoadData();
            for(WebServer webServer:webServerMap.values()) {
                URL url = new URL(webServer.getURL());
                HttpURLConnection con = (HttpURLConnection) url.openConnection();
                StartTime = System.currentTimeMillis();
                con.setRequestMethod("GET");
                try {
                    code = con.getResponseCode();
                }
                catch (Exception e){
                    System.out.println("Connection to Cloud failed with: " + webServer.getURL());
                    code = 300;
                }
                EndTime = System.currentTimeMillis();
                Latency = EndTime - StartTime;
                if((Latency < 60000) && (code >= 200 && code < 300)){
                    webServer.NumOfFails = 0;
                    ServerManager.DataBase("update servers set NumOfFails="+ webServer.NumOfFails+" where name='" + webServer.getName() + "';", false);
                }
                if ((Latency < 60000) && (code >= 200 && code < 300) && webServer.getState().equals(State.Healthy)) {
                    ServerManager.DataBase("INSERT INTO history values ('" + webServer.getName() + "','" + webServer.getURL() + "'," + 1 + "," + Latency + "," + code + ");", false);
                } else {
                    if ((Latency < 60000) && (code >= 200 && code < 300) && (webServer.NumOfSuccess >= 5)) {
                        ServerManager.DataBase("INSERT INTO history values ('" + webServer.getName() + "','" + webServer.getURL() + "'," + 1 + "," + Latency + "," + code + ");", false);
                        webServer.setState(State.Healthy);
                        ServerManager.DataBase("update servers set Helth=1 where name='" + webServer.getName() + "';", false);
                    } else {
                        if ((Latency < 60000) && (code >= 200 && code < 300) && (webServer.NumOfSuccess < 5)) {
                            webServer.NumOfSuccess++;
                            ServerManager.DataBase("update servers set NumOfSuccess="+ webServer.NumOfSuccess+" where name='" + webServer.getName() + "';", false);
                            ServerManager.DataBase("INSERT INTO history values ('" + webServer.getName() + "','" + webServer.getURL() + "'," + 1 + "," + Latency + "," + code + ");", false);
                        }
                        else {
                            webServer.NumOfSuccess = 0;
                            ServerManager.DataBase("update servers set NumOfSuccess="+ webServer.NumOfSuccess+" where name='" + webServer.getName() + "';", false);
                            if (webServer.NumOfFails >= 3){
                                webServer.setState(State.Sick);
                                ServerManager.DataBase("INSERT INTO history values ('" + webServer.getName() + "','" + webServer.getURL() + "'," + 0 + "," + Latency + "," + code + ");", false);
                                ServerManager.DataBase("update servers set Helth=0 where name='" + webServer.getName() + "';", false);
                            }
                            else {
                                webServer.NumOfFails ++;
                                ServerManager.DataBase("update servers set NumOfFails="+ webServer.NumOfFails+" where name='" + webServer.getName() + "';", false);
                                ServerManager.DataBase("INSERT INTO history values ('" + webServer.getName() + "','" + webServer.getURL() + "'," + 0 + "," + Latency + "," + code + ");", false);
                            }
                    }
                }
                }
            }
            java.lang.Thread.sleep(20000);
        }

    }
    protected static void LoadData() throws Exception{
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch (ClassNotFoundException e) {
            throw new ClassNotFoundException("mysql Driver not found");
        }
        Connection connection = DriverManager.getConnection(ServerManager.SqlUrl, ServerManager.user, ServerManager.password);
        PreparedStatement statement = connection.prepareStatement("select * from servers");
        ResultSet resultSet = statement.executeQuery();
        String GetName;
        String GetURL;
        int GetS;
        int GetF;
        while (resultSet.next()){
            GetName = resultSet.getString("name");
            GetURL = resultSet.getString("URL");
            GetS = resultSet.getInt("NumOfSuccess");
            GetF = resultSet.getInt("NumOfFails");
            webServerMap.put(GetName, new WebServer(GetName, GetURL,GetS,GetF));
        }
    }

}
