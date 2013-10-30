package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the VOCATION_RESTRICTION database table.
 * 
 */
@Embeddable
public class VocationRestrictionPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="VOCATION_ID", unique=true, nullable=false)
	private int vocationId;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="CHARACTERISTIC_ID", unique=true, nullable=false)
	private int characteristicId;

	public VocationRestrictionPK() {
	}
	public int getVocationId() {
		return this.vocationId;
	}
	public void setVocationId(int vocationId) {
		this.vocationId = vocationId;
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
		if (!(other instanceof VocationRestrictionPK)) {
			return false;
		}
		VocationRestrictionPK castOther = (VocationRestrictionPK)other;
		return 
			(this.vocationId == castOther.vocationId)
			&& (this.raceId == castOther.raceId)
			&& (this.characteristicId == castOther.characteristicId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.vocationId;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.characteristicId;
		
		return hash;
	}
}