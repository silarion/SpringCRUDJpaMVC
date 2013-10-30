package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the TOOL database table.
 * 
 */
@Entity
@Table(name="TOOL")
@NamedQuery(name="Tool.findAll", query="SELECT t FROM Tool t")
public class Tool implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Tool() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}