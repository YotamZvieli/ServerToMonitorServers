# WebServerMonitorSystem

* The programming language is Java build with Maven
* The server is based on Flask FrameWork. 
* General info:
* The system include 3 modules: web server manager , server monitor and Server to handle the api requests.
* Run and Boot:
* Compile and build with Maven.
* Load The 2 Dump file to mysql server client.
* Specify the Username and Password to mysql Server in the Server Manager code at the top of the file "ServerManager".
* DB: mysql - 2 tables. Servers table - Contains the list of servers and their data, History table - Contains the entire history of server tests.
* Run the Main Server module then the HealthMonitor and the Server Manager (you can use 3 shell windows or run in background the server and the monitor).
* Use the system:
* Server Manager: Using to add delete and edit servers in the system. The interface is through the cmd.

* Server Monitor: Run and test all Existing servers every 20 sec and save the data in the History table.

* Server (API End-points): Run on Localhost port: 4567. The specific API calls, URLs and parameters specify in The Postman File - attached in this repo.

* Assumptions about the input: The URLs are Valid HTTP Protocol.  




   