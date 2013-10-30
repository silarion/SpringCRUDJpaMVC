package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the CASTING_HAS_REAGENT database table.
 * 
 */
@Embeddable
public class CastingHasReagentPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="CASTING_ID", unique=true, nullable=false)
	private int castingId;

	@Column(name="REAGENT_ID", unique=true, nullable=false)
	private int reagentId;

	public CastingHasReagentPK() {
	}
	public int getCastingId() {
		return this.castingId;
	}
	public void setCastingId(int castingId) {
		this.castingId = castingId;
	}
	public int getReagentId() {
		return this.reagentId;
	}
	public void setReagentId(int reagentId) {
		this.reagentId = reagentId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof CastingHasReagentPK)) {
			return false;
		}
		CastingHasReagentPK castOther = (CastingHasReagentPK)other;
		return 
			(this.castingId == castOther.castingId)
			&& (this.reagentId == castOther.reagentId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.castingId;
		hash = hash * prime + this.reagentId;
		
		return hash;
	}
}