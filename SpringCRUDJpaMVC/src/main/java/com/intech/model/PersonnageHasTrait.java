package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the PERSONNAGE_HAS_TRAIT database table.
 * 
 */
@Entity
@Table(name="PERSONNAGE_HAS_TRAIT")
@NamedQuery(name="PersonnageHasTrait.findAll", query="SELECT p FROM PersonnageHasTrait p")
public class PersonnageHasTrait implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private PersonnageHasTraitPK id;

	public PersonnageHasTrait() {
	}

	public PersonnageHasTraitPK getId() {
		return this.id;
	}

	public void setId(PersonnageHasTraitPK id) {
		this.id = id;
	}

}