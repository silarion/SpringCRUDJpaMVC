package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the TRAIT database table.
 * 
 */
@Entity
@Table(name="TRAIT")
@NamedQuery(name="Trait.findAll", query="SELECT t FROM Trait t")
public class Trait implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="TRAIT_ID", unique=true, nullable=false)
	private int traitId;

	private int maxi;

	private int mini;

	@Lob
	@Column(name="TRAIT_DESC")
	private String traitDesc;

	@Column(name="TRAIT_NAME", length=45)
	private String traitName;

	public Trait() {
	}

	public int getTraitId() {
		return this.traitId;
	}

	public void setTraitId(int traitId) {
		this.traitId = traitId;
	}

	public int getMaxi() {
		return this.maxi;
	}

	public void setMaxi(int maxi) {
		this.maxi = maxi;
	}

	public int getMini() {
		return this.mini;
	}

	public void setMini(int mini) {
		this.mini = mini;
	}

	public String getTraitDesc() {
		return this.traitDesc;
	}

	public void setTraitDesc(String traitDesc) {
		this.traitDesc = traitDesc;
	}

	public String getTraitName() {
		return this.traitName;
	}

	public void setTraitName(String traitName) {
		this.traitName = traitName;
	}

}