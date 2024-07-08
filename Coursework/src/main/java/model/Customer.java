package model;

import java.io.Serializable;
import java.sql.Date;

public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;
	private int customerID;
	public int getcustomerID() {
		return customerID;
	}

	public void setcustomerID(int customerID) {
		this.customerID = customerID;
	}
	
	private String firstName;
	private String lastName;
	private String gender;
	private Date dob;
	private long phonenumber;
	private String email;
	private String address;
	private String password;
	
	public Customer()
	{
		
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public long getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(long phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
