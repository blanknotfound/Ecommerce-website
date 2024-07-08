package utils;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class DatabaseConnection {
	private static BasicDataSource datasource;
	private static Connection conn;
	
	static
	{
		datasource = new BasicDataSource();
		datasource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		datasource.setUrl("jdbc:mysql://localhost:3306/coursework");
		datasource.setUsername("root");
		datasource.setPassword("");

	}
	
	public static Connection getDbConnection()
	{
		try {
			conn= datasource.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
