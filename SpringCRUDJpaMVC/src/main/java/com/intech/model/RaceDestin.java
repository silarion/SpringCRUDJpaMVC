package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_DESTIN database table.
 * 
 */
@Entity
@Table(name="RACE_DESTIN")
@NamedQuery(name="RaceDestin.findAll", query="SELECT r FROM RaceDestin r")
public class RaceDestin implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceDestinPK id;

	private int minimum;

	private int modificateur;

	private int multiplicateur;

	public RaceDestin() {
	}

	public RaceDestinPK getId() {
		return this.id;
	}

	public void setId(RaceDestinPK id) {
		this.id = id;
	}

	public int getMinimum() {
		return this.minimum;
	}

	public void setMinimum(int minimum) {
		this.minimum = minimum;
	}

	public int getModificateur() {
		return this.modificateur;
	}

	public void setModificateur(int modificateur) {
		this.modificateur = modificateur;
	}

	public int getMultiplicateur() {
		return this.multiplicateur;
	}

	public void setMultiplicateur(int multiplicateur) {
		this.multiplicateur = multiplicateur;
	}

}