package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the AJUSTEMENT_POIDS_SEXE database table.
 * 
 */
@Entity
@Table(name="AJUSTEMENT_POIDS_SEXE")
@NamedQuery(name="AjustementPoidsSexe.findAll", query="SELECT a FROM AjustementPoidsSexe a")
public class AjustementPoidsSexe implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private AjustementPoidsSexePK id;

	@Column(name="DE_ID", nullable=false)
	private int deId;

	private int multiplicateur;

	public AjustementPoidsSexe() {
	}

	public AjustementPoidsSexePK getId() {
		return this.id;
	}

	public void setId(AjustementPoidsSexePK id) {
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