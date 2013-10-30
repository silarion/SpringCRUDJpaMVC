package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CORPULENCE database table.
 * 
 */
@Entity
@Table(name="CORPULENCE")
@NamedQuery(name="Corpulence.findAll", query="SELECT c FROM Corpulence c")
public class Corpulence implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="CORPULENCE_ID", unique=true, nullable=false)
	private int corpulenceId;

	@Column(name="CORPULENCE_NAME", length=45)
	private String corpulenceName;

	@Column(name="MODIFICATEUR_JET")
	private int modificateurJet;

	@Column(name="MODIFICATEUR_POIDS_DE", nullable=false)
	private int modificateurPoidsDe;

	@Column(name="MODIFICATEUR_POIDS_MULTIPLICATEUR", length=20)
	private String modificateurPoidsMultiplicateur;

	public Corpulence() {
	}

	public int getCorpulenceId() {
		return this.corpulenceId;
	}

	public void setCorpulenceId(int corpulenceId) {
		this.corpulenceId = corpulenceId;
	}

	public String getCorpulenceName() {
		return this.corpulenceName;
	}

	public void setCorpulenceName(String corpulenceName) {
		this.corpulenceName = corpulenceName;
	}

	public int getModificateurJet() {
		return this.modificateurJet;
	}

	public void setModificateurJet(int modificateurJet) {
		this.modificateurJet = modificateurJet;
	}

	public int getModificateurPoidsDe() {
		return this.modificateurPoidsDe;
	}

	public void setModificateurPoidsDe(int modificateurPoidsDe) {
		this.modificateurPoidsDe = modificateurPoidsDe;
	}

	public String getModificateurPoidsMultiplicateur() {
		return this.modificateurPoidsMultiplicateur;
	}

	public void setModificateurPoidsMultiplicateur(String modificateurPoidsMultiplicateur) {
		this.modificateurPoidsMultiplicateur = modificateurPoidsMultiplicateur;
	}

}