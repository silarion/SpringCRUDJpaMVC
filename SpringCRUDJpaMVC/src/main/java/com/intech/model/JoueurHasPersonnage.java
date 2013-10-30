package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the JOUEUR_HAS_PERSONNAGE database table.
 * 
 */
@Entity
@Table(name="JOUEUR_HAS_PERSONNAGE")
@NamedQuery(name="JoueurHasPersonnage.findAll", query="SELECT j FROM JoueurHasPersonnage j")
public class JoueurHasPersonnage implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private JoueurHasPersonnagePK id;

	public JoueurHasPersonnage() {
	}

	public JoueurHasPersonnagePK getId() {
		return this.id;
	}

	public void setId(JoueurHasPersonnagePK id) {
		this.id = id;
	}

}