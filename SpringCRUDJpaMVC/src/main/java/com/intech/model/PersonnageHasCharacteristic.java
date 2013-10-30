package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the PERSONNAGE_HAS_CHARACTERISTIC database table.
 * 
 */
@Entity
@Table(name="PERSONNAGE_HAS_CHARACTERISTIC")
@NamedQuery(name="PersonnageHasCharacteristic.findAll", query="SELECT p FROM PersonnageHasCharacteristic p")
public class PersonnageHasCharacteristic implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private PersonnageHasCharacteristicPK id;

	public PersonnageHasCharacteristic() {
	}

	public PersonnageHasCharacteristicPK getId() {
		return this.id;
	}

	public void setId(PersonnageHasCharacteristicPK id) {
		this.id = id;
	}

}