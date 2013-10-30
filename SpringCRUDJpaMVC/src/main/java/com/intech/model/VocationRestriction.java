package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the VOCATION_RESTRICTION database table.
 * 
 */
@Entity
@Table(name="VOCATION_RESTRICTION")
@NamedQuery(name="VocationRestriction.findAll", query="SELECT v FROM VocationRestriction v")
public class VocationRestriction implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private VocationRestrictionPK id;

	@Lob
	private String description;

	private int minimum;

	public VocationRestriction() {
	}

	public VocationRestrictionPK getId() {
		return this.id;
	}

	public void setId(VocationRestrictionPK id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getMinimum() {
		return this.minimum;
	}

	public void setMinimum(int minimum) {
		this.minimum = minimum;
	}

}