package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the AJUSTEMENT_POIDS_TAILLE database table.
 * 
 */
@Entity
@Table(name="AJUSTEMENT_POIDS_TAILLE")
@NamedQuery(name="AjustementPoidsTaille.findAll", query="SELECT a FROM AjustementPoidsTaille a")
public class AjustementPoidsTaille implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private AjustementPoidsTaillePK id;

	@Column(name="DE_ID", nullable=false)
	private int deId;

	private int multiplicateur;

	public AjustementPoidsTaille() {
	}

	public AjustementPoidsTaillePK getId() {
		return this.id;
	}

	public void setId(AjustementPoidsTaillePK id) {
		this.id = id;
	}

	public int getDeId() {
		return this.deId;
	}

	public void setDeId(int deId) {
		this.deId = deId;
	}

	public int getMultiplicateur() {
		return this.multiplicateur;
	}

	public void setMultiplicateur(int multiplicateur) {
		this.multiplicateur = multiplicateur;
	}

}