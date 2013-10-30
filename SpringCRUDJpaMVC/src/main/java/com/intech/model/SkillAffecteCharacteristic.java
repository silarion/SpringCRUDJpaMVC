package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the SKILL_AFFECTE_CHARACTERISTIC database table.
 * 
 */
@Entity
@Table(name="SKILL_AFFECTE_CHARACTERISTIC")
@NamedQuery(name="SkillAffecteCharacteristic.findAll", query="SELECT s FROM SkillAffecteCharacteristic s")
public class SkillAffecteCharacteristic implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private SkillAffecteCharacteristicPK id;

	private int minimum;

	private int operande;

	@Column(length=1)
	private String operateur;

	public SkillAffecteCharacteristic() {
	}

	public SkillAffecteCharacteristicPK getId() {
		return this.id;
	}

	public void setId(SkillAffecteCharacteristicPK id) {
		this.id = id;
	}

	public int getMinimum() {
		return this.minimum;
	}

	public void setMinimum(int minimum) {
		this.minimum = minimum;
	}

	public int getOperande() {
		return this.operande;
	}

	public void setOperande(int operande) {
		this.operande = operande;
	}

	public String getOperateur() {
		return this.operateur;
	}

	public void setOperateur(String operateur) {
		this.operateur = operateur;
	}

}