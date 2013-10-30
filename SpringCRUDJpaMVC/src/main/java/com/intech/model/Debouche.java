package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the DEBOUCHE database table.
 * 
 */
@Entity
@Table(name="DEBOUCHE")
@NamedQuery(name="Debouche.findAll", query="SELECT d FROM Debouche d")
public class Debouche implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private DebouchePK id;

	@Lob
	private String complement;

	public Debouche() {
	}

	public DebouchePK getId() {
		return this.id;
	}

	public void setId(DebouchePK id) {
		this.id = id;
	}

	public String getComplement() {
		return this.complement;
	}

	public void setComplement(String complement) {
		this.complement = complement;
	}

}