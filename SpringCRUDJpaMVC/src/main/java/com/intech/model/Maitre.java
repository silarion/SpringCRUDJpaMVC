package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the MAITRE database table.
 * 
 */
@Entity
@Table(name="MAITRE")
@NamedQuery(name="Maitre.findAll", query="SELECT m FROM Maitre m")
public class Maitre implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="USER_ID", unique=true, nullable=false)
	private int userId;

	public Maitre() {
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}