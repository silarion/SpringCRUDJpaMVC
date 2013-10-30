package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_ALIGNMENT database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_ALIGNMENT")
@NamedQuery(name="RaceHasAlignment.findAll", query="SELECT r FROM RaceHasAlignment r")
public class RaceHasAlignment implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasAlignmentPK id;

	public RaceHasAlignment() {
	}

	public RaceHasAlignmentPK getId() {
		return this.id;
	}

	public void setId(RaceHasAlignmentPK id) {
		this.id = id;
	}

}