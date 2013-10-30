package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the PERSONNAGE_HAS_SKILL database table.
 * 
 */
@Entity
@Table(name="PERSONNAGE_HAS_SKILL")
@NamedQuery(name="PersonnageHasSkill.findAll", query="SELECT p FROM PersonnageHasSkill p")
public class PersonnageHasSkill implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private PersonnageHasSkillPK id;

	public PersonnageHasSkill() {
	}

	public PersonnageHasSkillPK getId() {
		return this.id;
	}

	public void setId(PersonnageHasSkillPK id) {
		this.id = id;
	}

}