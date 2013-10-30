package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the MAGIC_FIELD database table.
 * 
 */
@Entity
@Table(name="MAGIC_FIELD")
@NamedQuery(name="MagicField.findAll", query="SELECT m FROM MagicField m")
public class MagicField implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MAGIC_FIELD_ID", unique=true, nullable=false)
	private int magicFieldId;

	@Lob
	@Column(name="MAGIC_FIELD_DESC")
	private String magicFieldDesc;

	@Column(name="MAGIC_FIELD_NAME", length=255)
	private String magicFieldName;

	public MagicField() {
	}

	public int getMagicFieldId() {
		return this.magicFieldId;
	}

	public void setMagicFieldId(int magicFieldId) {
		this.magicFieldId = magicFieldId;
	}

	public String getMagicFieldDesc() {
		return this.magicFieldDesc;
	}

	public void setMagicFieldDesc(String magicFieldDesc) {
		this.magicFieldDesc = magicFieldDesc;
	}

	public String getMagicFieldName() {
		return this.magicFieldName;
	}

	public void setMagicFieldName(String magicFieldName) {
		this.magicFieldName = magicFieldName;
	}

}