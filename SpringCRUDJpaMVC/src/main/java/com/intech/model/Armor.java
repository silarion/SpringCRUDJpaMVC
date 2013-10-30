package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ARMOR database table.
 * 
 */
@Entity
@Table(name="ARMOR")
@NamedQuery(name="Armor.findAll", query="SELECT a FROM Armor a")
public class Armor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Armor() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}