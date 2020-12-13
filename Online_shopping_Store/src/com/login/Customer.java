package com.login;

public class Customer {

	private int id;
	private String username;
	private String lastname;
	private String email;
	private String phone;
	private String password;
	private String type;

	public Customer(int id, String username, String lastname, String email, String phone, String password,
			String type) {
		super();
		this.id = id;
		this.username = username;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getLastname() {
		return lastname;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getPassword() {
		return password;
	}

	public String gettype() {
		return type;
	}

}
