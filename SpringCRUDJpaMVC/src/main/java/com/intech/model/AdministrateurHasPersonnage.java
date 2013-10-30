package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ADMINISTRATEUR_HAS_PERSONNAGE database table.
 * 
 */
@Entity
@Table(name="ADMINISTRATEUR_HAS_PERSONNAGE")
@NamedQuery(name="AdministrateurHasPersonnage.findAll", query="SELECT a FROM AdministrateurHasPersonnage a")
public class AdministrateurHasPersonnage implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private AdministrateurHasPersonnagePK id;

	public AdministrateurHasPersonnage() {
	}

	public AdministrateurHasPersonnagePK getId() {
		return this.id;
	}

	public void setId(AdministrateurHasPersonnagePK id) {
		this.id = id;
	}

}