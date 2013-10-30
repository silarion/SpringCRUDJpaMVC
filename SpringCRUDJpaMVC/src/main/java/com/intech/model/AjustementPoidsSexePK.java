package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the AJUSTEMENT_POIDS_SEXE database table.
 * 
 */
@Embeddable
public class AjustementPoidsSexePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(unique=true, nullable=false)
	private int chance;

	public AjustementPoidsSexePK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getChance() {
		return this.chance;
	}
	public void setChance(int chance) {
		this.chance = chance;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof AjustementPoidsSexePK)) {
			return false;
		}
		AjustementPoidsSexePK castOther = (AjustementPoidsSexePK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.chance == castOther.chance);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.chance;
		
		return hash;
	}
}