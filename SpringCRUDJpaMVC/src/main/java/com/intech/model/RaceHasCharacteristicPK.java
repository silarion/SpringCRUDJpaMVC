package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the RACE_HAS_CHARACTERISTIC database table.
 * 
 */
@Embeddable
public class RaceHasCharacteristicPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="CHARACTERISTIC_ID", unique=true, nullable=false)
	private int characteristicId;

	public RaceHasCharacteristicPK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
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
		if (!(other instanceof RaceHasCharacteristicPK)) {
			return false;
		}
		RaceHasCharacteristicPK castOther = (RaceHasCharacteristicPK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.characteristicId == castOther.characteristicId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.characteristicId;
		
		return hash;
	}
}