package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the INITIAL_SKILL database table.
 * 
 */
@Entity
@Table(name="INITIAL_SKILL")
@NamedQuery(name="InitialSkill.findAll", query="SELECT i FROM InitialSkill i")
public class InitialSkill implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private InitialSkillPK id;

	private int modificateur;

	private int multiplicateur;

	public InitialSkill() {
	}

	public InitialSkillPK getId() {
		return this.id;
	}

	public void setId(InitialSkillPK id) {
		this.id = id;
	}

	public int getModificateur() {
		return this.modificateur;
	}

	public void setModificateur(int modificateur) {
		this.modificateur = modificateur;
	}

	public int getMultiplicateur() {
		return this.multiplicateur;
	}

	public void setMultiplicateur(int multiplicateur) {
		this.multiplicateur = multiplicateur;
	}

}