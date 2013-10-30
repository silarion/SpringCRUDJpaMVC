package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the RACE_DESTIN database table.
 * 
 */
@Embeddable
public class RaceDestinPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="DE_ID", unique=true, nullable=false)
	private int deId;

	public RaceDestinPK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getDeId() {
		return this.deId;
	}
	public void setDeId(int deId) {
		this.deId = deId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof RaceDestinPK)) {
			return false;
		}
		RaceDestinPK castOther = (RaceDestinPK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.deId == castOther.deId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.deId;
		
		return hash;
	}
}