package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the DEBOUCHE database table.
 * 
 */
@Embeddable
public class DebouchePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="CAREER_ID", unique=true, nullable=false)
	private int careerId;

	@Column(name="CAREER_ID2", unique=true, nullable=false)
	private int careerId2;

	public DebouchePK() {
	}
	public int getCareerId() {
		return this.careerId;
	}
	public void setCareerId(int careerId) {
		this.careerId = careerId;
	}
	public int getCareerId2() {
		return this.careerId2;
	}
	public void setCareerId2(int careerId2) {
		this.careerId2 = careerId2;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof DebouchePK)) {
			return false;
		}
		DebouchePK castOther = (DebouchePK)other;
		return 
			(this.careerId == castOther.careerId)
			&& (this.careerId2 == castOther.careerId2);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.careerId;
		hash = hash * prime + this.careerId2;
		
		return hash;
	}
}