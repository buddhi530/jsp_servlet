package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

//database  connection details  file

public class DBconnect {

	private static String url = "jdbc:mysql://localhost:3306/shopping_store";
	private static String user = "root";
	private static String pass = "1234";
	private static Connection con;

	public static Connection getConnection() {
		try {

			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(url, user, pass);

		} catch (Exception e) {
			System.out.println("db connection failed");
		}
		return con;
	}
}
