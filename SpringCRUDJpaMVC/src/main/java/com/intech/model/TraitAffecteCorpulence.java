package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the TRAIT_AFFECTE_CORPULENCE database table.
 * 
 */
@Entity
@Table(name="TRAIT_AFFECTE_CORPULENCE")
@NamedQuery(name="TraitAffecteCorpulence.findAll", query="SELECT t FROM TraitAffecteCorpulence t")
public class TraitAffecteCorpulence implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private TraitAffecteCorpulencePK id;

	public TraitAffecteCorpulence() {
	}

	public TraitAffecteCorpulencePK getId() {
		return this.id;
	}

	public void setId(TraitAffecteCorpulencePK id) {
		this.id = id;
	}

}