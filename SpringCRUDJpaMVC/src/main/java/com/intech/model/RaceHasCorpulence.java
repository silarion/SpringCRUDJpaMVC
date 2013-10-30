package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_CORPULENCE database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_CORPULENCE")
@NamedQuery(name="RaceHasCorpulence.findAll", query="SELECT r FROM RaceHasCorpulence r")
public class RaceHasCorpulence implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasCorpulencePK id;

	public RaceHasCorpulence() {
	}

	public RaceHasCorpulencePK getId() {
		return this.id;
	}

	public void setId(RaceHasCorpulencePK id) {
		this.id = id;
	}

}