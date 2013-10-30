package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the USERS database table.
 * 
 */
@Entity
@Table(name="USERS")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="USER_ID", unique=true, nullable=false)
	private int userId;

	@Lob
	@Column(name="USER_DESC")
	private String userDesc;

	@Column(name="USER_LOGIN", nullable=false, length=20)
	private String userLogin;

	@Column(name="USER_NAME", nullable=false, length=45)
	private String userName;

	@Column(name="USER_PASSWORD", nullable=false, length=255)
	private String userPassword;

	public User() {
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserDesc() {
		return this.userDesc;
	}

	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}

	public String getUserLogin() {
		return this.userLogin;
	}

	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

}