package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the SKILL_HAS_IMAGE database table.
 * 
 */
@Embeddable
public class SkillHasImagePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="SKILL_ID", unique=true, nullable=false)
	private int skillId;

	@Column(name="IMAGE_ID", unique=true, nullable=false)
	private int imageId;

	public SkillHasImagePK() {
	}
	public int getSkillId() {
		return this.skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
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
		if (!(other instanceof SkillHasImagePK)) {
			return false;
		}
		SkillHasImagePK castOther = (SkillHasImagePK)other;
		return 
			(this.skillId == castOther.skillId)
			&& (this.imageId == castOther.imageId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.skillId;
		hash = hash * prime + this.imageId;
		
		return hash;
	}
}