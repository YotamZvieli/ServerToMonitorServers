import java.sql.*;
import java.util.*;

public class ServerManager {
    protected static Map<String, WebServer> ServerSet = new HashMap<>();
    protected static final String SqlUrl = "jdbc:mysql://localhost:3306/cloudmonitoringdb"; //server address
    protected static final String user = "root"; //User name to mysql server
    protected static final String password = "shchanya6625975"; //PassWord to mysql user

    public static void main(String[] args) throws Exception { //Interface to create delete and edit web servers from the system.
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new ClassNotFoundException("mysql Driver not found");
        }
        System.out.println("init...");
        Connection connection = DriverManager.getConnection(SqlUrl, user, password);
        PreparedStatement statement = connection.prepareStatement("select * from servers");
        ResultSet resultSet = statement.executeQuery();
        String GetName;
        String GetURL;
        while (resultSet.next()) {
            GetName = resultSet.getString("name");
            GetURL = resultSet.getString("URL");
            ServerSet.put(GetName, new WebServer(GetName, GetURL));
        }
        System.out.println("init complete");
        Scanner scanner = new Scanner(System.in);
        boolean Exit = true;
        while (Exit) {
            System.out.println("Menu: Add server: a, Edit server: b,Delete server: c,ServersList: d,Exit: quit");
            switch (scanner.nextLine()) {
                case "a":
                    System.out.println("Enter server name: ");
                    String name = scanner.nextLine();
                    System.out.println("Enter server URL: ");
                    String URL = scanner.nextLine();
                    addServer(name, URL);
                    break;
                case "b":
                    System.out.println("Enter server name: ");
                    String serverToEdit = scanner.nextLine();
                    if (ServerSet.containsKey(serverToEdit)) {
                        System.out.println("Server found please enter new server parameters if type K parameter will not change");
                        System.out.println("Enter server new name: ");
                        String newName = scanner.nextLine();
                        System.out.println("Enter server new URL");
                        String newURL = scanner.nextLine();
                        WebServer editServer = ServerSet.get(serverToEdit);
                        if (!newName.equals("k")) {
                            editServer.setName(newName);
                            ServerSet.put(newName, ServerSet.remove(serverToEdit));
                        }
                        if (!newURL.equals("K")) {
                            editServer.setURL(newURL);
                        }
                        PreparedStatement editStatement = connection.prepareStatement("update servers set name='" + editServer.getName() + "',URL='" + editServer.getURL() + "'");
                        editStatement.execute();

                    } else {
                        System.out.println("server not found...");
                    }
                    break;
                case "c":
                    System.out.println("Enter server name to delete: ");
                    String serverToDel = scanner.nextLine();
                    deleteServer(serverToDel);
                    break;
                case "quit":
                    Exit = false;
                default:
                    break;
            }
        }

        scanner.close();
    }

    protected static ResultSet DataBase(String op, boolean ExecuteWithReturn) throws Exception { //func to handle the health monitor DB requests.
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new ClassNotFoundException("mysql Driver not found");
        }
        Connection connection = DriverManager.getConnection(SqlUrl, user, password);
        PreparedStatement statement = connection.prepareStatement(op);
        if (ExecuteWithReturn) {
            ResultSet resultSet = statement.executeQuery();
            return resultSet;
        } else {
            statement.execute();
            return null;
        }

    }
    /*
    * The functions below are called from the API server to execute actions in the server manage system.
    * */

    protected static void addServer(String name, String URL) throws SQLException {
        Connection connection = DriverManager.getConnection(SqlUrl, user, password);
        WebServer server = new WebServer(name, URL);
        ServerSet.put(server.getName(), server);
        PreparedStatement addStatement = connection.prepareStatement("INSERT INTO servers (name,URL) values ('" + name + "','" + URL + "')");
        addStatement.execute();
    }

    protected static void deleteServer(String serverToDel) throws SQLException {
        Connection connection = DriverManager.getConnection(SqlUrl, user, password);
        if (ServerSet.containsKey(serverToDel)) {
            WebServer deleted = ServerSet.remove(serverToDel);
            PreparedStatement deleteStatement = connection.prepareStatement("delete from servers where name='" + deleted.getName() + "'");
            deleteStatement.execute();
            System.out.println("Server " + deleted.getName() + " deleted");
        } else {
            System.out.println("server not found...");
        }
    }
    protected static void deleteServer(String serverToDel,boolean flag) throws SQLException {
        Connection connection = DriverManager.getConnection(SqlUrl, user, password);
        if (ServerSet.containsKey(serverToDel)||flag) {
            WebServer deleted = ServerSet.remove(serverToDel);
            PreparedStatement deleteStatement = connection.prepareStatement("delete from servers where name='" + serverToDel + "'");
            deleteStatement.execute();
            System.out.println("Server " + serverToDel + " deleted");
        } else {
            System.out.println("server not found...");
        }
    }
}
