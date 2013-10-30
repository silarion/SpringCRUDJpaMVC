package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the FOOD database table.
 * 
 */
@Entity
@Table(name="FOOD")
@NamedQuery(name="Food.findAll", query="SELECT f FROM Food f")
public class Food implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Food() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}