package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the WEAPON_HAS_SKILL database table.
 * 
 */
@Embeddable
public class WeaponHasSkillPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="SKILL_ID", unique=true, nullable=false)
	private int skillId;

	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public WeaponHasSkillPK() {
	}
	public int getSkillId() {
		return this.skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}
	public int getObjetId() {
		return this.objetId;
	}
	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof WeaponHasSkillPK)) {
			return false;
		}
		WeaponHasSkillPK castOther = (WeaponHasSkillPK)other;
		return 
			(this.skillId == castOther.skillId)
			&& (this.objetId == castOther.objetId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.skillId;
		hash = hash * prime + this.objetId;
		
		return hash;
	}
}