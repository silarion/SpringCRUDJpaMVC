package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the PERSONNAGE_HAS_TRAIT database table.
 * 
 */
@Embeddable
public class PersonnageHasTraitPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="PERSONNAGE_ID", unique=true, nullable=false)
	private int personnageId;

	@Column(name="TRAIT_ID", unique=true, nullable=false)
	private int traitId;

	public PersonnageHasTraitPK() {
	}
	public int getPersonnageId() {
		return this.personnageId;
	}
	public void setPersonnageId(int personnageId) {
		this.personnageId = personnageId;
	}
	public int getTraitId() {
		return this.traitId;
	}
	public void setTraitId(int traitId) {
		this.traitId = traitId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof PersonnageHasTraitPK)) {
			return false;
		}
		PersonnageHasTraitPK castOther = (PersonnageHasTraitPK)other;
		return 
			(this.personnageId == castOther.personnageId)
			&& (this.traitId == castOther.traitId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.personnageId;
		hash = hash * prime + this.traitId;
		
		return hash;
	}
}