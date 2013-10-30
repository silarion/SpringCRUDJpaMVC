package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the MAGIC_LEVEL database table.
 * 
 */
@Entity
@Table(name="MAGIC_LEVEL")
@NamedQuery(name="MagicLevel.findAll", query="SELECT m FROM MagicLevel m")
public class MagicLevel implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MAGIC_LEVEL_ID", unique=true, nullable=false)
	private int magicLevelId;

	@Lob
	@Column(name="MAGIC_LEVEL_DESC")
	private String magicLevelDesc;

	@Column(name="MAGIC_LEVEL_NAME", length=255)
	private String magicLevelName;

	public MagicLevel() {
	}

	public int getMagicLevelId() {
		return this.magicLevelId;
	}

	public void setMagicLevelId(int magicLevelId) {
		this.magicLevelId = magicLevelId;
	}

	public String getMagicLevelDesc() {
		return this.magicLevelDesc;
	}

	public void setMagicLevelDesc(String magicLevelDesc) {
		this.magicLevelDesc = magicLevelDesc;
	}

	public String getMagicLevelName() {
		return this.magicLevelName;
	}

	public void setMagicLevelName(String magicLevelName) {
		this.magicLevelName = magicLevelName;
	}

}