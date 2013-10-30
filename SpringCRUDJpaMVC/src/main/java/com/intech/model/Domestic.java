package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the DOMESTIC database table.
 * 
 */
@Entity
@Table(name="DOMESTIC")
@NamedQuery(name="Domestic.findAll", query="SELECT d FROM Domestic d")
public class Domestic implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Domestic() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}