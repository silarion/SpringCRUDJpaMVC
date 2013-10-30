package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the AGE_SKILL database table.
 * 
 */
@Embeddable
public class AgeSkillPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="AGE_MIN", unique=true, nullable=false)
	private int ageMin;

	@Column(name="AGE_MAX", unique=true, nullable=false)
	private int ageMax;

	public AgeSkillPK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getAgeMin() {
		return this.ageMin;
	}
	public void setAgeMin(int ageMin) {
		this.ageMin = ageMin;
	}
	public int getAgeMax() {
		return this.ageMax;
	}
	public void setAgeMax(int ageMax) {
		this.ageMax = ageMax;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof AgeSkillPK)) {
			return false;
		}
		AgeSkillPK castOther = (AgeSkillPK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.ageMin == castOther.ageMin)
			&& (this.ageMax == castOther.ageMax);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.ageMin;
		hash = hash * prime + this.ageMax;
		
		return hash;
	}
}