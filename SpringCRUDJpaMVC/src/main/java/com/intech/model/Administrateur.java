package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ADMINISTRATEUR database table.
 * 
 */
@Entity
@Table(name="ADMINISTRATEUR")
@NamedQuery(name="Administrateur.findAll", query="SELECT a FROM Administrateur a")
public class Administrateur implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="USER_ID", unique=true, nullable=false)
	private int userId;

	public Administrateur() {
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}