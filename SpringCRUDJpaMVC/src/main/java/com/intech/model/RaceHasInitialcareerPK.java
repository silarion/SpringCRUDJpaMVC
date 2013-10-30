package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the RACE_HAS_INITIALCAREER database table.
 * 
 */
@Embeddable
public class RaceHasInitialcareerPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="CAREER_ID", unique=true, nullable=false)
	private int careerId;

	@Column(name="VOCATION_ID", unique=true, nullable=false)
	private int vocationId;

	public RaceHasInitialcareerPK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getCareerId() {
		return this.careerId;
	}
	public void setCareerId(int careerId) {
		this.careerId = careerId;
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
		if (!(other instanceof RaceHasInitialcareerPK)) {
			return false;
		}
		RaceHasInitialcareerPK castOther = (RaceHasInitialcareerPK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.careerId == castOther.careerId)
			&& (this.vocationId == castOther.vocationId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.careerId;
		hash = hash * prime + this.vocationId;
		
		return hash;
	}
}