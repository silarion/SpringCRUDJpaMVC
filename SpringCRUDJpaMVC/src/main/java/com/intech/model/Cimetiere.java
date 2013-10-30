package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CIMETIERE database table.
 * 
 */
@Entity
@Table(name="CIMETIERE")
@NamedQuery(name="Cimetiere.findAll", query="SELECT c FROM Cimetiere c")
public class Cimetiere implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="PERSONNAGE_ID", unique=true, nullable=false)
	private int personnageId;

	@Lob
	@Column(name="CIMETIERE_DESC")
	private String cimetiereDesc;

	public Cimetiere() {
	}

	public int getPersonnageId() {
		return this.personnageId;
	}

	public void setPersonnageId(int personnageId) {
		this.personnageId = personnageId;
	}

	public String getCimetiereDesc() {
		return this.cimetiereDesc;
	}

	public void setCimetiereDesc(String cimetiereDesc) {
		this.cimetiereDesc = cimetiereDesc;
	}

}