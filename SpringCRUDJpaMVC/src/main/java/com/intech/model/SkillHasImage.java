package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the SKILL_HAS_IMAGE database table.
 * 
 */
@Entity
@Table(name="SKILL_HAS_IMAGE")
@NamedQuery(name="SkillHasImage.findAll", query="SELECT s FROM SkillHasImage s")
public class SkillHasImage implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private SkillHasImagePK id;

	public SkillHasImage() {
	}

	public SkillHasImagePK getId() {
		return this.id;
	}

	public void setId(SkillHasImagePK id) {
		this.id = id;
	}

}