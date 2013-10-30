package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the LIGHTING database table.
 * 
 */
@Entity
@Table(name="LIGHTING")
@NamedQuery(name="Lighting.findAll", query="SELECT l FROM Lighting l")
public class Lighting implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Lighting() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}