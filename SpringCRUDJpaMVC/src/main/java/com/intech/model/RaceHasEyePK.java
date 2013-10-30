package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the RACE_HAS_EYE database table.
 * 
 */
@Embeddable
public class RaceHasEyePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="EYE_ID", unique=true, nullable=false)
	private int eyeId;

	@Column(unique=true, nullable=false)
	private int mini;

	@Column(unique=true, nullable=false)
	private int maxi;

	public RaceHasEyePK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getEyeId() {
		return this.eyeId;
	}
	public void setEyeId(int eyeId) {
		this.eyeId = eyeId;
	}
	public int getMini() {
		return this.mini;
	}
	public void setMini(int mini) {
		this.mini = mini;
	}
	public int getMaxi() {
		return this.maxi;
	}
	public void setMaxi(int maxi) {
		this.maxi = maxi;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof RaceHasEyePK)) {
			return false;
		}
		RaceHasEyePK castOther = (RaceHasEyePK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.eyeId == castOther.eyeId)
			&& (this.mini == castOther.mini)
			&& (this.maxi == castOther.maxi);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.eyeId;
		hash = hash * prime + this.mini;
		hash = hash * prime + this.maxi;
		
		return hash;
	}
}