package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the WEAPON_HAS_SKILL database table.
 * 
 */
@Entity
@Table(name="WEAPON_HAS_SKILL")
@NamedQuery(name="WeaponHasSkill.findAll", query="SELECT w FROM WeaponHasSkill w")
public class WeaponHasSkill implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private WeaponHasSkillPK id;

	public WeaponHasSkill() {
	}

	public WeaponHasSkillPK getId() {
		return this.id;
	}

	public void setId(WeaponHasSkillPK id) {
		this.id = id;
	}

}