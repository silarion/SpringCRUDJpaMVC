package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the RACE_HAS_LANGUAGE database table.
 * 
 */
@Embeddable
public class RaceHasLanguagePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="LANGUAGE_ID", unique=true, nullable=false)
	private int languageId;

	public RaceHasLanguagePK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getLanguageId() {
		return this.languageId;
	}
	public void setLanguageId(int languageId) {
		this.languageId = languageId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof RaceHasLanguagePK)) {
			return false;
		}
		RaceHasLanguagePK castOther = (RaceHasLanguagePK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.languageId == castOther.languageId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.languageId;
		
		return hash;
	}
}