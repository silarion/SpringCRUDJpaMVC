package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the ADMINISTRATEUR_HAS_PERSONNAGE database table.
 * 
 */
@Embeddable
public class AdministrateurHasPersonnagePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="USER_ID", unique=true, nullable=false)
	private int userId;

	@Column(name="PERSONNAGE_ID", unique=true, nullable=false)
	private int personnageId;

	public AdministrateurHasPersonnagePK() {
	}
	public int getUserId() {
		return this.userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getPersonnageId() {
		return this.personnageId;
	}
	public void setPersonnageId(int personnageId) {
		this.personnageId = personnageId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof AdministrateurHasPersonnagePK)) {
			return false;
		}
		AdministrateurHasPersonnagePK castOther = (AdministrateurHasPersonnagePK)other;
		return 
			(this.userId == castOther.userId)
			&& (this.personnageId == castOther.personnageId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.userId;
		hash = hash * prime + this.personnageId;
		
		return hash;
	}
}