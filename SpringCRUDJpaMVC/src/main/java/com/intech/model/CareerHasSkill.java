package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CAREER_HAS_SKILL database table.
 * 
 */
@Entity
@Table(name="CAREER_HAS_SKILL")
@NamedQuery(name="CareerHasSkill.findAll", query="SELECT c FROM CareerHasSkill c")
public class CareerHasSkill implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CareerHasSkillPK id;

	private int chance;

	@Column(length=255)
	private String complement;

	public CareerHasSkill() {
	}

	public CareerHasSkillPK getId() {
		return this.id;
	}

	public void setId(CareerHasSkillPK id) {
		this.id = id;
	}

	public int getChance() {
		return this.chance;
	}

	public void setChance(int chance) {
		this.chance = chance;
	}

	public String getComplement() {
		return this.complement;
	}

	public void setComplement(String complement) {
		this.complement = complement;
	}

}