package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the PERSONNAGE_HAS_SKILL database table.
 * 
 */
@Embeddable
public class PersonnageHasSkillPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="PERSONNAGE_ID", unique=true, nullable=false)
	private int personnageId;

	@Column(name="SKILL_ID", unique=true, nullable=false)
	private int skillId;

	public PersonnageHasSkillPK() {
	}
	public int getPersonnageId() {
		return this.personnageId;
	}
	public void setPersonnageId(int personnageId) {
		this.personnageId = personnageId;
	}
	public int getSkillId() {
		return this.skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof PersonnageHasSkillPK)) {
			return false;
		}
		PersonnageHasSkillPK castOther = (PersonnageHasSkillPK)other;
		return 
			(this.personnageId == castOther.personnageId)
			&& (this.skillId == castOther.skillId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.personnageId;
		hash = hash * prime + this.skillId;
		
		return hash;
	}
}