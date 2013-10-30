package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the DE database table.
 * 
 */
@Entity
@Table(name="DE")
@NamedQuery(name="De.findAll", query="SELECT d FROM De d")
public class De implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="DE_ID", unique=true, nullable=false)
	private int deId;

	@Column(name="DE_VALUE", nullable=false)
	private int deValue;

	public De() {
	}

	public int getDeId() {
		return this.deId;
	}

	public void setDeId(int deId) {
		this.deId = deId;
	}

	public int getDeValue() {
		return this.deValue;
	}

	public void setDeValue(int deValue) {
		this.deValue = deValue;
	}

}