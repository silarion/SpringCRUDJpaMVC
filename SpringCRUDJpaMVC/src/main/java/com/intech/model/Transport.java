package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the TRANSPORT database table.
 * 
 */
@Entity
@Table(name="TRANSPORT")
@NamedQuery(name="Transport.findAll", query="SELECT t FROM Transport t")
public class Transport implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Transport() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}