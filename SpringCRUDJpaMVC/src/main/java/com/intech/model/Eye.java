package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the EYE database table.
 * 
 */
@Entity
@Table(name="EYE")
@NamedQuery(name="Eye.findAll", query="SELECT e FROM Eye e")
public class Eye implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="EYE_ID", unique=true, nullable=false)
	private int eyeId;

	@Column(name="EYE_NAME", length=45)
	private String eyeName;

	public Eye() {
	}

	public int getEyeId() {
		return this.eyeId;
	}

	public void setEyeId(int eyeId) {
		this.eyeId = eyeId;
	}

	public String getEyeName() {
		return this.eyeName;
	}

	public void setEyeName(String eyeName) {
		this.eyeName = eyeName;
	}

}