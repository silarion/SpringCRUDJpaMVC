package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the DOTATION database table.
 * 
 */
@Entity
@Table(name="DOTATION")
@NamedQuery(name="Dotation.findAll", query="SELECT d FROM Dotation d")
public class Dotation implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private DotationPK id;

	private int chance;

	@Lob
	@Column(name="DOTATION_DESC")
	private String dotationDesc;

	@Column(name="DOTATION_QTE", length=255)
	private String dotationQte;

	public Dotation() {
	}

	public DotationPK getId() {
		return this.id;
	}

	public void setId(DotationPK id) {
		this.id = id;
	}

	public int getChance() {
		return this.chance;
	}

	public void setChance(int chance) {
		this.chance = chance;
	}

	public String getDotationDesc() {
		return this.dotationDesc;
	}

	public void setDotationDesc(String dotationDesc) {
		this.dotationDesc = dotationDesc;
	}

	public String getDotationQte() {
		return this.dotationQte;
	}

	public void setDotationQte(String dotationQte) {
		this.dotationQte = dotationQte;
	}

}