package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the AGE_SKILL database table.
 * 
 */
@Entity
@Table(name="AGE_SKILL")
@NamedQuery(name="AgeSkill.findAll", query="SELECT a FROM AgeSkill a")
public class AgeSkill implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private AgeSkillPK id;

	private int modificateur;

	public AgeSkill() {
	}

	public AgeSkillPK getId() {
		return this.id;
	}

	public void setId(AgeSkillPK id) {
		this.id = id;
	}

	public int getModificateur() {
		return this.modificateur;
	}

	public void setModificateur(int modificateur) {
		this.modificateur = modificateur;
	}

}