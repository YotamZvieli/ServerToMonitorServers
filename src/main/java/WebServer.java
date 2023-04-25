public class WebServer {
    private String name;
    private String URL;
    private State state;
    protected int NumOfSuccess;
    protected int NumOfFails;
    public WebServer(String name,String URL){ //Constructor
        this.name = name;
        this.URL = URL;
        this.state = State.NEI;
        this.NumOfSuccess = 0;
        this.NumOfFails = 0;
    }
    public WebServer(String name,String URL,int NumOfSuccess,int NumOfFails){ //Constructor
        this.name = name;
        this.URL = URL;
        this.state = State.NEI;
        this.NumOfSuccess = NumOfSuccess;
        this.NumOfFails = NumOfFails;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object obj) {
        WebServer webServer = (WebServer) obj;
        return (webServer.name.equals(this.name));
    }
}
