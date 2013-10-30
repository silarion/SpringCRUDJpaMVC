package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the POIDS database table.
 * 
 */
@Embeddable
public class PoidPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(unique=true, nullable=false)
	private double poids;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	public PoidPK() {
	}
	public double getPoids() {
		return this.poids;
	}
	public void setPoids(double poids) {
		this.poids = poids;
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof PoidPK)) {
			return false;
		}
		PoidPK castOther = (PoidPK)other;
		return 
			(this.poids == castOther.poids)
			&& (this.raceId == castOther.raceId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + ((int) (java.lang.Double.doubleToLongBits(this.poids) ^ (java.lang.Double.doubleToLongBits(this.poids) >>> 32)));
		hash = hash * prime + this.raceId;
		
		return hash;
	}
}