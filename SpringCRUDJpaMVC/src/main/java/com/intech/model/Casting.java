package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CASTING database table.
 * 
 */
@Entity
@Table(name="CASTING")
@NamedQuery(name="Casting.findAll", query="SELECT c FROM Casting c")
public class Casting implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="CASTING_ID", unique=true, nullable=false)
	private int castingId;

	@Column(name="CASTING_AREA", length=255)
	private String castingArea;

	@Lob
	@Column(name="CASTING_DESC")
	private String castingDesc;

	@Column(name="CASTING_DURATION", length=255)
	private String castingDuration;

	@Column(name="CASTING_MP")
	private int castingMp;

	@Column(name="CASTING_NAME", length=255)
	private String castingName;

	@Column(name="CASTING_PREPARATION", length=255)
	private String castingPreparation;

	@Column(name="CASTING_RANGE", length=255)
	private String castingRange;

	@Column(name="MAGIC_FIELD_ID", nullable=false)
	private int magicFieldId;

	@Column(name="MAGIC_LEVEL_ID")
	private int magicLevelId;

	public Casting() {
	}

	public int getCastingId() {
		return this.castingId;
	}

	public void setCastingId(int castingId) {
		this.castingId = castingId;
	}

	public String getCastingArea() {
		return this.castingArea;
	}

	public void setCastingArea(String castingArea) {
		this.castingArea = castingArea;
	}

	public String getCastingDesc() {
		return this.castingDesc;
	}

	public void setCastingDesc(String castingDesc) {
		this.castingDesc = castingDesc;
	}

	public String getCastingDuration() {
		return this.castingDuration;
	}

	public void setCastingDuration(String castingDuration) {
		this.castingDuration = castingDuration;
	}

	public int getCastingMp() {
		return this.castingMp;
	}

	public void setCastingMp(int castingMp) {
		this.castingMp = castingMp;
	}

	public String getCastingName() {
		return this.castingName;
	}

	public void setCastingName(String castingName) {
		this.castingName = castingName;
	}

	public String getCastingPreparation() {
		return this.castingPreparation;
	}

	public void setCastingPreparation(String castingPreparation) {
		this.castingPreparation = castingPreparation;
	}

	public String getCastingRange() {
		return this.castingRange;
	}

	public void setCastingRange(String castingRange) {
		this.castingRange = castingRange;
	}

	public int getMagicFieldId() {
		return this.magicFieldId;
	}

	public void setMagicFieldId(int magicFieldId) {
		this.magicFieldId = magicFieldId;
	}

	public int getMagicLevelId() {
		return this.magicLevelId;
	}

	public void setMagicLevelId(int magicLevelId) {
		this.magicLevelId = magicLevelId;
	}

}