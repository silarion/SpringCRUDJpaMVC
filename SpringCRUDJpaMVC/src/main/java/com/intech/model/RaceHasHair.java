package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_HAIR database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_HAIR")
@NamedQuery(name="RaceHasHair.findAll", query="SELECT r FROM RaceHasHair r")
public class RaceHasHair implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasHairPK id;

	public RaceHasHair() {
	}

	public RaceHasHairPK getId() {
		return this.id;
	}

	public void setId(RaceHasHairPK id) {
		this.id = id;
	}

}