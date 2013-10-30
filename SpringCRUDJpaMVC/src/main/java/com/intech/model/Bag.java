package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the BAG database table.
 * 
 */
@Entity
@Table(name="BAG")
@NamedQuery(name="Bag.findAll", query="SELECT b FROM Bag b")
public class Bag implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Bag() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}