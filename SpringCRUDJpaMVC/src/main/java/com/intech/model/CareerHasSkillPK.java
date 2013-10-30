package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the CAREER_HAS_SKILL database table.
 * 
 */
@Embeddable
public class CareerHasSkillPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="CAREER_ID", unique=true, nullable=false)
	private int careerId;

	@Column(name="SKILL_ID", unique=true, nullable=false)
	private int skillId;

	public CareerHasSkillPK() {
	}
	public int getCareerId() {
		return this.careerId;
	}
	public void setCareerId(int careerId) {
		this.careerId = careerId;
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
		if (!(other instanceof CareerHasSkillPK)) {
			return false;
		}
		CareerHasSkillPK castOther = (CareerHasSkillPK)other;
		return 
			(this.careerId == castOther.careerId)
			&& (this.skillId == castOther.skillId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.careerId;
		hash = hash * prime + this.skillId;
		
		return hash;
	}
}