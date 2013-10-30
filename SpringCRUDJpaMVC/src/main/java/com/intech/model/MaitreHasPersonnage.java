package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the MAITRE_HAS_PERSONNAGE database table.
 * 
 */
@Entity
@Table(name="MAITRE_HAS_PERSONNAGE")
@NamedQuery(name="MaitreHasPersonnage.findAll", query="SELECT m FROM MaitreHasPersonnage m")
public class MaitreHasPersonnage implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private MaitreHasPersonnagePK id;

	public MaitreHasPersonnage() {
	}

	public MaitreHasPersonnagePK getId() {
		return this.id;
	}

	public void setId(MaitreHasPersonnagePK id) {
		this.id = id;
	}

}