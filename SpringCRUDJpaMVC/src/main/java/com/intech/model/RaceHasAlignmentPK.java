package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the RACE_HAS_ALIGNMENT database table.
 * 
 */
@Embeddable
public class RaceHasAlignmentPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="ALIGNMENT_ID", unique=true, nullable=false)
	private int alignmentId;

	public RaceHasAlignmentPK() {
	}
	public int getRaceId() {
		return this.raceId;
	}
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	public int getAlignmentId() {
		return this.alignmentId;
	}
	public void setAlignmentId(int alignmentId) {
		this.alignmentId = alignmentId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof RaceHasAlignmentPK)) {
			return false;
		}
		RaceHasAlignmentPK castOther = (RaceHasAlignmentPK)other;
		return 
			(this.raceId == castOther.raceId)
			&& (this.alignmentId == castOther.alignmentId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.raceId;
		hash = hash * prime + this.alignmentId;
		
		return hash;
	}
}