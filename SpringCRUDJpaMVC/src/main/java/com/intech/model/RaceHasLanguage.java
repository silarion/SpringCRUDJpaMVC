package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE_HAS_LANGUAGE database table.
 * 
 */
@Entity
@Table(name="RACE_HAS_LANGUAGE")
@NamedQuery(name="RaceHasLanguage.findAll", query="SELECT r FROM RaceHasLanguage r")
public class RaceHasLanguage implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RaceHasLanguagePK id;

	public RaceHasLanguage() {
	}

	public RaceHasLanguagePK getId() {
		return this.id;
	}

	public void setId(RaceHasLanguagePK id) {
		this.id = id;
	}

}