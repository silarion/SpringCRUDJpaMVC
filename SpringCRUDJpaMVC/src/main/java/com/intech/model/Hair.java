package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the HAIR database table.
 * 
 */
@Entity
@Table(name="HAIR")
@NamedQuery(name="Hair.findAll", query="SELECT h FROM Hair h")
public class Hair implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="HAIR_ID", unique=true, nullable=false)
	private int hairId;

	@Column(name="HAIR_NAME", length=45)
	private String hairName;

	public Hair() {
	}

	public int getHairId() {
		return this.hairId;
	}

	public void setHairId(int hairId) {
		this.hairId = hairId;
	}

	public String getHairName() {
		return this.hairName;
	}

	public void setHairName(String hairName) {
		this.hairName = hairName;
	}

}