package helper.connection;

import java.sql.*;
import java.util.*;

public class SQLConnection {
	// Method: Get Azure SQL DB Connection
	public static Connection getAzureDBConnection() throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
        Properties properties = new Properties();
        properties.load(SQLConnection.class.getClassLoader().getResourceAsStream("connection.sql.properties"));
        Connection connection = DriverManager.getConnection(properties.getProperty("url"), properties);
		return connection;
	}	
}

