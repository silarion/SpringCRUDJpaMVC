package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the PERSONNAGE_HAS_LANGUAGE database table.
 * 
 */
@Embeddable
public class PersonnageHasLanguagePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="PERSONNAGE_ID", unique=true, nullable=false)
	private int personnageId;

	@Column(name="LANGUAGE_ID", unique=true, nullable=false)
	private int languageId;

	public PersonnageHasLanguagePK() {
	}
	public int getPersonnageId() {
		return this.personnageId;
	}
	public void setPersonnageId(int personnageId) {
		this.personnageId = personnageId;
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
		if (!(other instanceof PersonnageHasLanguagePK)) {
			return false;
		}
		PersonnageHasLanguagePK castOther = (PersonnageHasLanguagePK)other;
		return 
			(this.personnageId == castOther.personnageId)
			&& (this.languageId == castOther.languageId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.personnageId;
		hash = hash * prime + this.languageId;
		
		return hash;
	}
}