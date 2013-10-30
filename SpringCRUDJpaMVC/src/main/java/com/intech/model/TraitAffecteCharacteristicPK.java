package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the TRAIT_AFFECTE_CHARACTERISTIC database table.
 * 
 */
@Embeddable
public class TraitAffecteCharacteristicPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="TRAIT_ID", unique=true, nullable=false)
	private int traitId;

	@Column(name="CHARACTERISTIC_ID", unique=true, nullable=false)
	private int characteristicId;

	public TraitAffecteCharacteristicPK() {
	}
	public int getTraitId() {
		return this.traitId;
	}
	public void setTraitId(int traitId) {
		this.traitId = traitId;
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
		if (!(other instanceof TraitAffecteCharacteristicPK)) {
			return false;
		}
		TraitAffecteCharacteristicPK castOther = (TraitAffecteCharacteristicPK)other;
		return 
			(this.traitId == castOther.traitId)
			&& (this.characteristicId == castOther.characteristicId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.traitId;
		hash = hash * prime + this.characteristicId;
		
		return hash;
	}
}