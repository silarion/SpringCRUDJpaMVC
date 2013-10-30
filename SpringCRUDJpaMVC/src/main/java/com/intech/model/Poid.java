package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the POIDS database table.
 * 
 */
@Entity
@Table(name="POIDS")
@NamedQuery(name="Poid.findAll", query="SELECT p FROM Poid p")
public class Poid implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private PoidPK id;

	private int maxi;

	private int mini;

	public Poid() {
	}

	public PoidPK getId() {
		return this.id;
	}

	public void setId(PoidPK id) {
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