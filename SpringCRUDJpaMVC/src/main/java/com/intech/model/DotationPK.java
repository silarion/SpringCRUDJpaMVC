package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the DOTATION database table.
 * 
 */
@Embeddable
public class DotationPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="CAREER_ID", unique=true, nullable=false)
	private int careerId;

	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public DotationPK() {
	}
	public int getCareerId() {
		return this.careerId;
	}
	public void setCareerId(int careerId) {
		this.careerId = careerId;
	}
	public int getObjetId() {
		return this.objetId;
	}
	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof DotationPK)) {
			return false;
		}
		DotationPK castOther = (DotationPK)other;
		return 
			(this.careerId == castOther.careerId)
			&& (this.objetId == castOther.objetId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.careerId;
		hash = hash * prime + this.objetId;
		
		return hash;
	}
}