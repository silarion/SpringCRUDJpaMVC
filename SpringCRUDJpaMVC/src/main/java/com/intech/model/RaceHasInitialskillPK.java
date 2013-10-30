package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the RACE_HAS_INITIALSKILL database table.
 * 
 */
@Embeddable
public class RaceHasInitialskillPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="SKILL_ID", unique=true, nullable=false)
	private int skillId;

	@Column(name="VOCATION_ID", unique=true, nullable=false)
	private int vocationId;

	public RaceHasInitialskillPK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getSkillId() {
		return this.skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}
	public int getVocationId() {
		return this.vocationId;
	}
	public void setVocationId(int vocationId) {
		this.vocationId = vocationId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof RaceHasInitialskillPK)) {
			return false;
		}
		RaceHasInitialskillPK castOther = (RaceHasInitialskillPK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.skillId == castOther.skillId)
			&& (this.vocationId == castOther.vocationId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.skillId;
		hash = hash * prime + this.vocationId;
		
		return hash;
	}
}