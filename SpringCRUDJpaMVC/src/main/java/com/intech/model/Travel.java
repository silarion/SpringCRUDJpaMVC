package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the TRAVEL database table.
 * 
 */
@Entity
@Table(name="TRAVEL")
@NamedQuery(name="Travel.findAll", query="SELECT t FROM Travel t")
public class Travel implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Travel() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}