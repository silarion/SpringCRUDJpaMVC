package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ANIMAL database table.
 * 
 */
@Entity
@Table(name="ANIMAL")
@NamedQuery(name="Animal.findAll", query="SELECT a FROM Animal a")
public class Animal implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Animal() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}