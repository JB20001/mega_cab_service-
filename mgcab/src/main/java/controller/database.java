package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class database {
	public static Connection getcon() throws ClassNotFoundException, SQLException
	{
		String username = "root";
		String password="123456";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mega?characterEncoding=utf8",username,password);
		return con;
	}

	public static Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}
}