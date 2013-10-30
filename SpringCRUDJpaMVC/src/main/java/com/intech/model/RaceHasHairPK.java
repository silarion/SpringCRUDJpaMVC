package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the RACE_HAS_HAIR database table.
 * 
 */
@Embeddable
public class RaceHasHairPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="HAIR_ID", unique=true, nullable=false)
	private int hairId;

	@Column(unique=true, nullable=false)
	private int mini;

	@Column(unique=true, nullable=false)
	private int maxi;

	public RaceHasHairPK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getHairId() {
		return this.hairId;
	}
	public void setHairId(int hairId) {
		this.hairId = hairId;
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
		if (!(other instanceof RaceHasHairPK)) {
			return false;
		}
		RaceHasHairPK castOther = (RaceHasHairPK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.hairId == castOther.hairId)
			&& (this.mini == castOther.mini)
			&& (this.maxi == castOther.maxi);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.hairId;
		hash = hash * prime + this.mini;
		hash = hash * prime + this.maxi;
		
		return hash;
	}
}