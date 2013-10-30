package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the PERSONNAGE_HAS_LANGUAGE database table.
 * 
 */
@Entity
@Table(name="PERSONNAGE_HAS_LANGUAGE")
@NamedQuery(name="PersonnageHasLanguage.findAll", query="SELECT p FROM PersonnageHasLanguage p")
public class PersonnageHasLanguage implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private PersonnageHasLanguagePK id;

	public PersonnageHasLanguage() {
	}

	public PersonnageHasLanguagePK getId() {
		return this.id;
	}

	public void setId(PersonnageHasLanguagePK id) {
		this.id = id;
	}

}