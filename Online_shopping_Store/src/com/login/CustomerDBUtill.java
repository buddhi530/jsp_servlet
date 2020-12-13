package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//check the validation of the customers

public class CustomerDBUtill {

	private static boolean isSucess;
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;

	public static List<Customer> validate(String username, String password, String tpe) {

		ArrayList<Customer> cus = new ArrayList<>();

		// validate

		try {

			con = DBconnect.getConnection();
			st = con.createStatement();

			String sql = "select * from login where username = '" + username + "'and password ='" + password
					+ "'and type ='" + tpe + "'";

			rs = st.executeQuery(sql);

			if (rs.next()) {
				int id = rs.getInt(1);
				String unme = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String pss = rs.getString(6);
				String type = rs.getString(7);

				Customer c = new Customer(id, unme, lname, email, phone, pss, type);
				cus.add(c);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cus;
	}

	// insert the users and admins to the system using insert function

	public static boolean insertCus(String username, String lastname, String email, String phone, String password,
			String type) {
		boolean isSuccess = false;

		try {

			con = DBconnect.getConnection();
			st = con.createStatement();
			String sql = "insert into login values(0,'" + username + "','" + lastname + "','" + email + "','" + phone
					+ "','" + password + "','" + type + "')";
			int rs = st.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;

			} else {
				isSuccess = false;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// update the user details

	public static boolean updateuser(String id, String uname, String lname, String email, String phone,
			String password) {
		try {

			con = DBconnect.getConnection();
			st = con.createStatement();
			String sql = "update login set username = '" + uname + "',lastname = '" + lname + "',email ='" + email
					+ "',phone ='" + phone + "', password = '" + password + "'" + "where id='" + id + "'";
			int rs = st.executeUpdate(sql);

			if (rs > 0) {
				isSucess = true;

			} else {
				isSucess = false;

			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return isSucess;
	}

	// update the admin details

	public static boolean updateAdmin(String id, String uname, String lname, String email, String phone,
			String password) {
		try {

			con = DBconnect.getConnection();
			st = con.createStatement();
			String sql = "update login set username = '" + uname + "',lastname = '" + lname + "',email ='" + email
					+ "',phone ='" + phone + "', password = '" + password + "'" + "where id='" + id + "'";
			int rs = st.executeUpdate(sql);

			if (rs > 0) {
				isSucess = true;

			} else {
				isSucess = false;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSucess;
	}

	// updated date retrieve to the pages

	public static List<Customer> getadmindetails(String Id) {

		int convrtid = Integer.parseInt(Id);

		ArrayList<Customer> cus = new ArrayList<>();
		try {
			con = DBconnect.getConnection();
			st = con.createStatement();
			String sql = "select * from login where id = '" + convrtid + "'";
			rs = st.executeQuery(sql);

			while (rs.next()) {

				int id = rs.getInt(1);
				String unme = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String pss = rs.getString(6);
				String type = rs.getString(7);

				Customer c = new Customer(id, unme, lname, email, phone, pss, type);
				cus.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("syntax adminerror");
		}

		return cus;
	}

	// updated date retrieve to the pages

	public static List<Customer> getuserdetails(String Id) {

		int convrtid = Integer.parseInt(Id);

		ArrayList<Customer> cus = new ArrayList<>();
		try {
			con = DBconnect.getConnection();
			st = con.createStatement();
			String sql = "select * from login where id ='" + convrtid + "'";
			rs = st.executeQuery(sql);

			while (rs.next()) {

				int id = rs.getInt(1);
				String unme = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String pss = rs.getString(6);
				String type = rs.getString(7);

				Customer c = new Customer(id, unme, lname, email, phone, pss, type);
				cus.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("syntax usererror");
		}

		return cus;
	}



	// delete the user account

	public static boolean deleteuser(String id) {

		int convid = Integer.parseInt(id);

		try {

			con = DBconnect.getConnection();
			st = con.createStatement();
			String sql = "delete from login where id ='" + convid + "'";
			int rs = st.executeUpdate(sql);

			if (rs > 0) {

				isSucess = true;
			} else {
				isSucess = false;

			}

		} catch (Exception e) {

		}

		return isSucess;
	}

}
