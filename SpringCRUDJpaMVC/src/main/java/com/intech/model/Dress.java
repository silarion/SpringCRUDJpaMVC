package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the DRESS database table.
 * 
 */
@Entity
@Table(name="DRESS")
@NamedQuery(name="Dress.findAll", query="SELECT d FROM Dress d")
public class Dress implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Dress() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}