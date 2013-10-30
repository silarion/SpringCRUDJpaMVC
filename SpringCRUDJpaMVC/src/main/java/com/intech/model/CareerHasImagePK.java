package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the CAREER_HAS_IMAGE database table.
 * 
 */
@Embeddable
public class CareerHasImagePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="CAREER_ID", unique=true, nullable=false)
	private int careerId;

	@Column(name="IMAGE_ID", unique=true, nullable=false)
	private int imageId;

	public CareerHasImagePK() {
	}
	public int getCareerId() {
		return this.careerId;
	}
	public void setCareerId(int careerId) {
		this.careerId = careerId;
	}
	public int getImageId() {
		return this.imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof CareerHasImagePK)) {
			return false;
		}
		CareerHasImagePK castOther = (CareerHasImagePK)other;
		return 
			(this.careerId == castOther.careerId)
			&& (this.imageId == castOther.imageId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.careerId;
		hash = hash * prime + this.imageId;
		
		return hash;
	}
}