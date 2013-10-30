package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_EYE database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_EYE")
@NamedQuery(name="RaceHasEye.findAll", query="SELECT r FROM RaceHasEye r")
public class RaceHasEye implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasEyePK id;

	public RaceHasEye() {
	}

	public RaceHasEyePK getId() {
		return this.id;
	}

	public void setId(RaceHasEyePK id) {
		this.id = id;
	}

}