package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_INITIALSKILL database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_INITIALSKILL")
@NamedQuery(name="RaceHasInitialskill.findAll", query="SELECT r FROM RaceHasInitialskill r")
public class RaceHasInitialskill implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasInitialskillPK id;

	private int maxi;

	private int mini;

	public RaceHasInitialskill() {
	}

	public RaceHasInitialskillPK getId() {
		return this.id;
	}

	public void setId(RaceHasInitialskillPK id) {
		this.id = id;
	}

	public int getMaxi() {
		return this.maxi;
	}

	public void setMaxi(int maxi) {
		this.maxi = maxi;
	}

	public int getMini() {
		return this.mini;
	}

	public void setMini(int mini) {
		this.mini = mini;
	}

}