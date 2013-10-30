package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_CHARACTERISTIC database table.
 * 
 */
@Entity
@Table(name="RACE_CHARACTERISTIC")
@NamedQuery(name="RaceCharacteristic.findAll", query="SELECT r FROM RaceCharacteristic r")
public class RaceCharacteristic implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceCharacteristicPK id;

	@Column(name="DE_ID", nullable=false)
	private int deId;

	@Column(nullable=false)
	private int modificateur;

	@Column(nullable=false)
	private int multiplicateur;

	public RaceCharacteristic() {
	}

	public RaceCharacteristicPK getId() {
		return this.id;
	}

	public void setId(RaceCharacteristicPK id) {
		this.id = id;
	}

	public int getDeId() {
		return this.deId;
	}

	public void setDeId(int deId) {
		this.deId = deId;
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