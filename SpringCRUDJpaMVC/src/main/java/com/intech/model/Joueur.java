package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the JOUEUR database table.
 * 
 */
@Entity
@Table(name="JOUEUR")
@NamedQuery(name="Joueur.findAll", query="SELECT j FROM Joueur j")
public class Joueur implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="USER_ID", unique=true, nullable=false)
	private int userId;

	public Joueur() {
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}