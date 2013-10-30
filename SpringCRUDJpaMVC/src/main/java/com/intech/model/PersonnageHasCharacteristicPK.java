package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the PERSONNAGE_HAS_CHARACTERISTIC database table.
 * 
 */
@Embeddable
public class PersonnageHasCharacteristicPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="PERSONNAGE_ID", unique=true, nullable=false)
	private int personnageId;

	@Column(name="CHARACTERISTIC_ID", unique=true, nullable=false)
	private int characteristicId;

	public PersonnageHasCharacteristicPK() {
	}
	public int getPersonnageId() {
		return this.personnageId;
	}
	public void setPersonnageId(int personnageId) {
		this.personnageId = personnageId;
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
		if (!(other instanceof PersonnageHasCharacteristicPK)) {
			return false;
		}
		PersonnageHasCharacteristicPK castOther = (PersonnageHasCharacteristicPK)other;
		return 
			(this.personnageId == castOther.personnageId)
			&& (this.characteristicId == castOther.characteristicId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.personnageId;
		hash = hash * prime + this.characteristicId;
		
		return hash;
	}
}