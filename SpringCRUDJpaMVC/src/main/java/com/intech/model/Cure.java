package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CURE database table.
 * 
 */
@Entity
@Table(name="CURE")
@NamedQuery(name="Cure.findAll", query="SELECT c FROM Cure c")
public class Cure implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Cure() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}