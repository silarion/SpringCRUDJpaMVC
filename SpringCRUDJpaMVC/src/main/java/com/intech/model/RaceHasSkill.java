package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_SKILL database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_SKILL")
@NamedQuery(name="RaceHasSkill.findAll", query="SELECT r FROM RaceHasSkill r")
public class RaceHasSkill implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasSkillPK id;

	private short decompte;

	private short obligatoire;

	public RaceHasSkill() {
	}

	public RaceHasSkillPK getId() {
		return this.id;
	}

	public void setId(RaceHasSkillPK id) {
		this.id = id;
	}

	public short getDecompte() {
		return this.decompte;
	}

	public void setDecompte(short decompte) {
		this.decompte = decompte;
	}

	public short getObligatoire() {
		return this.obligatoire;
	}

	public void setObligatoire(short obligatoire) {
		this.obligatoire = obligatoire;
	}

}