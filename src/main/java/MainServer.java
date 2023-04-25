import static spark.Spark.get;
import spark.Request;
import spark.Response;
import spark.Route;
import java.sql.*;
import java.util.ArrayList;

public class MainServer {
    public static void main(String[] args) {
        get("/Create", new Route() {//EndPoint to create new server object in the system.
            @Override
            public Object handle(Request request, Response response) throws Exception {
                response.status(200);
                ServerManager.addServer(request.queryParams("name"),request.queryParams("URL"));
                System.out.println(request.queryParams("name"));
                return "Your server added successfully Name: " + request.queryParams("name")  + " URL: " + request.queryParams("URL");
            }
        });
        get("/Delete", new Route() { //EndPoint to Delete server by name.
            @Override
            public Object handle(Request request, Response response) throws Exception {
                response.status(200);
                ServerManager.deleteServer(request.queryParams("name"),true);
                return "Your server deleted successfully Name: " + request.queryParams("name");
            }
        });

        get("/Edit", new Route() { //End point to Edit exist server.
            @Override
            public Object handle(Request request, Response response) throws Exception {
                response.status(200);
                String nameToEdit = request.queryParams("nameToEdit");
                String newName = request.queryParams("newName");
                String newURL = request.queryParams("newURL");
                ServerManager.deleteServer(nameToEdit,true);
                ServerManager.addServer(newName,newURL);
                return "Your server Edit successfully New Details: " + request.queryParams("nameToEdit");
            }
        });

        get("/GetDataOfWebServer", new Route() { //Get specific server data and last 10 tests results.
            @Override
            public Object handle(Request request, Response response) throws Exception {
                response.status(200);
                String ServerName = request.queryParams("name");
                response.type("text/html");
                ArrayList<String> data = ReceiveFromDB(0,ServerName);
                String Message1 = "<h1>Server Details: Health: " + data.get(1) + " URL: " + data.get(0) +  "</h1>";
                String Log = "";
                int j = 1;
                for(int i = 2; i < data.size()-2 && i < 20;i += 2){
                    Log = Log + "<p1> RequestNum: "+ j++ +" code: " + data.get(i) + " Health: " + data.get(i + 1) + "</p1>";
                    Log = Log + "<br>";
                }
                return Message1  + "Log: " + "<br>" + Log;
            }
        });
        get("/GetServersList", new Route() { //Get list of all servers in the system.
            @Override
            public Object handle(Request request, Response response) throws Exception {
                response.status(200);
                response.type("text/html");
                ArrayList<String> data = ReceiveFromDB(1,null);
                String Message1 = "<h1>All Servers Details</h1>";
                String Log = "";
                for(int i = 0; i < data.size(); i += 3){
                    Log = Log + "<p1> ServerName: "+ data.get(i) +" URL: " + data.get(i+1) + " Health: " + data.get(i + 2) + "</p1>";
                    Log = Log + "<br>";
                }
                return Message1  + "<br>" + Log;
            }
        });
        get("/GetHistoryOfWebServer", new Route() { //All history of a specific server
            @Override
            public Object handle(Request request, Response response) throws Exception {
                response.status(200);
                String ServerName = request.queryParams("name");
                response.type("text/html");
                ArrayList<String> data = ReceiveFromDB(2,ServerName);
                String Message1 = "<h1>Server History: </h1>";
                String Log = "";
                for(int i = 0; i < data.size();i += 5){
                    Log = Log + "<p1> Name: " + data.get(i) + " URL: " + data.get(i + 1) + " Helth: " + data.get(i + 2) + " latency: " + data.get(i + 3) + " code: " + data.get(i+4) +"</p1>";
                    Log = Log + "<br>";
                }
                return Message1  + "Log: " + "<br>" + Log;
            }
        });

    }
    protected static ArrayList<String> ReceiveFromDB(int op, String serverOptional) throws ClassNotFoundException, SQLException {//Func to make DB interface easy and reuse of code.
        ArrayList<String> data = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new ClassNotFoundException("mysql Driver not found");
        }
        Connection connection = DriverManager.getConnection(ServerManager.SqlUrl, ServerManager.user, ServerManager.password);
        switch (op){
            case 0: {
                PreparedStatement statement = connection.prepareStatement("select * from servers where name='" + serverOptional + "'");
                ResultSet resultSet = statement.executeQuery();
                resultSet.next();
                data.add(resultSet.getString("URL"));
                data.add(((Integer) resultSet.getInt("Helth")).toString());
                statement = connection.prepareStatement("select * from history where name='" + serverOptional + "'");
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    data.add(((Integer) resultSet.getInt("code")).toString());
                    data.add(((Integer) resultSet.getInt("Helth")).toString());
                }
                return data;
            }
            case 1:
            {
                PreparedStatement statement = connection.prepareStatement("select * from servers;");
                ResultSet resultSet = statement.executeQuery();
                while (resultSet.next()){
                    data.add(resultSet.getString("name"));
                    data.add(resultSet.getString("URL"));
                    if(resultSet.getString("Helth") != null) {
                        data.add(((Integer) resultSet.getInt("Helth")).toString());
                    }
                    else {
                        data.add("NEI");
                    }
                }
                return data;
            }
            case 2:
            {
                PreparedStatement statement = connection.prepareStatement("select * from history where name='" + serverOptional + "';");
                ResultSet resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    data.add(resultSet.getString("name"));
                    data.add(resultSet.getString("URL"));
                    data.add(resultSet.getString("Helth"));
                    data.add(resultSet.getString("latency"));
                    data.add(resultSet.getString("code"));
                }
                return data;
            }

        }
        return null;
    }
}