package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the PERSONNAGE database table.
 * 
 */
@Entity
@Table(name="PERSONNAGE")
@NamedQuery(name="Personnage.findAll", query="SELECT p FROM Personnage p")
public class Personnage implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="PERSONNAGE_ID", unique=true, nullable=false)
	private int personnageId;

	@Column(name="ALIGNMENT_ID", nullable=false)
	private int alignmentId;

	@Column(name="CAREER_ID", nullable=false)
	private int careerId;

	@Column(name="EYE_ID")
	private int eyeId;

	@Column(name="HAIR_ID")
	private int hairId;

	@Column(name="IMAGE_ID")
	private int imageId;

	@Column(name="PERSONNAGE_AGE")
	private int personnageAge;

	@Lob
	@Column(name="PERSONNAGE_DESC")
	private String personnageDesc;

	@Column(name="PERSONNAGE_NAME", length=255)
	private String personnageName;

	@Column(name="PERSONNAGE_POIDS")
	private double personnagePoids;

	@Column(name="PERSONNAGE_TAILLE")
	private int personnageTaille;

	@Column(name="PERSONNAGE_XP")
	private int personnageXp;

	@Column(name="RACE_ID", nullable=false)
	private int raceId;

	@Column(name="SEX_ID", nullable=false)
	private int sexId;

	@Column(name="VOCATION_ID", nullable=false)
	private int vocationId;

	public Personnage() {
	}

	public int getPersonnageId() {
		return this.personnageId;
	}

	public void setPersonnageId(int personnageId) {
		this.personnageId = personnageId;
	}

	public int getAlignmentId() {
		return this.alignmentId;
	}

	public void setAlignmentId(int alignmentId) {
		this.alignmentId = alignmentId;
	}

	public int getCareerId() {
		return this.careerId;
	}

	public void setCareerId(int careerId) {
		this.careerId = careerId;
	}

	public int getEyeId() {
		return this.eyeId;
	}

	public void setEyeId(int eyeId) {
		this.eyeId = eyeId;
	}

	public int getHairId() {
		return this.hairId;
	}

	public void setHairId(int hairId) {
		this.hairId = hairId;
	}

	public int getImageId() {
		return this.imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public int getPersonnageAge() {
		return this.personnageAge;
	}

	public void setPersonnageAge(int personnageAge) {
		this.personnageAge = personnageAge;
	}

	public String getPersonnageDesc() {
		return this.personnageDesc;
	}

	public void setPersonnageDesc(String personnageDesc) {
		this.personnageDesc = personnageDesc;
	}

	public String getPersonnageName() {
		return this.personnageName;
	}

	public void setPersonnageName(String personnageName) {
		this.personnageName = personnageName;
	}

	public double getPersonnagePoids() {
		return this.personnagePoids;
	}

	public void setPersonnagePoids(double personnagePoids) {
		this.personnagePoids = personnagePoids;
	}

	public int getPersonnageTaille() {
		return this.personnageTaille;
	}

	public void setPersonnageTaille(int personnageTaille) {
		this.personnageTaille = personnageTaille;
	}

	public int getPersonnageXp() {
		return this.personnageXp;
	}

	public void setPersonnageXp(int personnageXp) {
		this.personnageXp = personnageXp;
	}

	public int getRaceId() {
		return this.raceId;
	}

	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}

	public int getSexId() {
		return this.sexId;
	}

	public void setSexId(int sexId) {
		this.sexId = sexId;
	}

	public int getVocationId() {
		return this.vocationId;
	}

	public void setVocationId(int vocationId) {
		this.vocationId = vocationId;
	}

}