package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the TRAIT_AFFECTE_CORPULENCE database table.
 * 
 */
@Embeddable
public class TraitAffecteCorpulencePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="TRAIT_ID", unique=true, nullable=false)
	private int traitId;

	@Column(name="CORPULENCE_ID", unique=true, nullable=false)
	private int corpulenceId;

	public TraitAffecteCorpulencePK() {
	}
	public int getTraitId() {
		return this.traitId;
	}
	public void setTraitId(int traitId) {
		this.traitId = traitId;
	}
	public int getCorpulenceId() {
		return this.corpulenceId;
	}
	public void setCorpulenceId(int corpulenceId) {
		this.corpulenceId = corpulenceId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof TraitAffecteCorpulencePK)) {
			return false;
		}
		TraitAffecteCorpulencePK castOther = (TraitAffecteCorpulencePK)other;
		return 
			(this.traitId == castOther.traitId)
			&& (this.corpulenceId == castOther.corpulenceId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.traitId;
		hash = hash * prime + this.corpulenceId;
		
		return hash;
	}
}