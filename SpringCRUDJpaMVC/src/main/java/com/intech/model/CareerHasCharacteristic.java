package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CAREER_HAS_CHARACTERISTIC database table.
 * 
 */
@Entity
@Table(name="CAREER_HAS_CHARACTERISTIC")
@NamedQuery(name="CareerHasCharacteristic.findAll", query="SELECT c FROM CareerHasCharacteristic c")
public class CareerHasCharacteristic implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CareerHasCharacteristicPK id;

	private int value;

	public CareerHasCharacteristic() {
	}

	public CareerHasCharacteristicPK getId() {
		return this.id;
	}

	public void setId(CareerHasCharacteristicPK id) {
		this.id = id;
	}

	public int getValue() {
		return this.value;
	}

	public void setValue(int value) {
		this.value = value;
	}

}