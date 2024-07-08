package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import utils.DatabaseConnection;

public class CustomerDAO {
	private Connection conn;
	private PreparedStatement statement;
	private ResultSet Set;
	private boolean isSuccess;
	private static final String inserting_query="insert into customers(firstname,lastname,gender,dob,phonenumber,email,address,password)"
			+ "values(?,?,?,?,?,?,?,?) ";
	
	public CustomerDAO()
	{
		conn=DatabaseConnection.getDbConnection();
	}

}
