package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_INITIALCAREER database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_INITIALCAREER")
@NamedQuery(name="RaceHasInitialcareer.findAll", query="SELECT r FROM RaceHasInitialcareer r")
public class RaceHasInitialcareer implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasInitialcareerPK id;

	private int maxi;

	private int mini;

	public RaceHasInitialcareer() {
	}

	public RaceHasInitialcareerPK getId() {
		return this.id;
	}

	public void setId(RaceHasInitialcareerPK id) {
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