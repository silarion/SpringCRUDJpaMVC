package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the SKILL_AFFECTE_CHARACTERISTIC database table.
 * 
 */
@Embeddable
public class SkillAffecteCharacteristicPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="SKILL_ID", unique=true, nullable=false)
	private int skillId;

	@Column(name="CHARACTERISTIC_ID", unique=true, nullable=false)
	private int characteristicId;

	public SkillAffecteCharacteristicPK() {
	}
	public int getSkillId() {
		return this.skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}
	public int getCharacteristicId() {
		return this.characteristicId;
	}
	public void setCharacteristicId(int characteristicId) {
		this.characteristicId = characteristicId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof SkillAffecteCharacteristicPK)) {
			return false;
		}
		SkillAffecteCharacteristicPK castOther = (SkillAffecteCharacteristicPK)other;
		return 
			(this.skillId == castOther.skillId)
			&& (this.characteristicId == castOther.characteristicId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.skillId;
		hash = hash * prime + this.characteristicId;
		
		return hash;
	}
}