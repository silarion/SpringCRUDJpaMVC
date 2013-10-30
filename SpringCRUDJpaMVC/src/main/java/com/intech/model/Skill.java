package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the SKILL database table.
 * 
 */
@Entity
@Table(name="SKILL")
@NamedQuery(name="Skill.findAll", query="SELECT s FROM Skill s")
public class Skill implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="SKILL_ID", unique=true, nullable=false)
	private int skillId;

	@Column(name="COPYRIGHT_ID", nullable=false)
	private int copyrightId;

	private int cumulable;

	@Column(name="MAIN_SKILL")
	private int mainSkill;

	@Lob
	@Column(name="SKILL_DESC")
	private String skillDesc;

	@Column(name="SKILL_NAME", length=255)
	private String skillName;

	public Skill() {
	}

	public int getSkillId() {
		return this.skillId;
	}

	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}

	public int getCopyrightId() {
		return this.copyrightId;
	}

	public void setCopyrightId(int copyrightId) {
		this.copyrightId = copyrightId;
	}

	public int getCumulable() {
		return this.cumulable;
	}

	public void setCumulable(int cumulable) {
		this.cumulable = cumulable;
	}

	public int getMainSkill() {
		return this.mainSkill;
	}

	public void setMainSkill(int mainSkill) {
		this.mainSkill = mainSkill;
	}

	public String getSkillDesc() {
		return this.skillDesc;
	}

	public void setSkillDesc(String skillDesc) {
		this.skillDesc = skillDesc;
	}

	public String getSkillName() {
		return this.skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

}