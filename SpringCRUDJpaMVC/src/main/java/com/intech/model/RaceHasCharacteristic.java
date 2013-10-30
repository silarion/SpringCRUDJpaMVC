package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_CHARACTERISTIC database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_CHARACTERISTIC")
@NamedQuery(name="RaceHasCharacteristic.findAll", query="SELECT r FROM RaceHasCharacteristic r")
public class RaceHasCharacteristic implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasCharacteristicPK id;

	private int value;

	public RaceHasCharacteristic() {
	}

	public RaceHasCharacteristicPK getId() {
		return this.id;
	}

	public void setId(RaceHasCharacteristicPK id) {
		this.id = id;
	}

	public int getValue() {
		return this.value;
	}

	public void setValue(int value) {
		this.value = value;
	}

}