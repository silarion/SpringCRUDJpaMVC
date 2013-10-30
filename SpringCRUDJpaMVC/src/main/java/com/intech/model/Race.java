package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the RACE database table.
 * 
 */
@Entity
@Table(name="RACE")
@NamedQuery(name="Race.findAll", query="SELECT r FROM Race r")
public class Race implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="RACE_ID", unique=true, nullable=false)
	private int raceId;

	@Column(name="RACE_AGEDE1")
	private int raceAgede1;

	@Column(name="RACE_AGEDE2")
	private int raceAgede2;

	@Column(name="RACE_AGEMULTIPLICATEUR1")
	private int raceAgemultiplicateur1;

	@Column(name="RACE_AGEMULTIPLICATEUR2")
	private int raceAgemultiplicateur2;

	@Column(name="RACE_BASEHEIGHT")
	private int raceBaseheight;

	@Lob
	@Column(name="RACE_DESC", nullable=false)
	private String raceDesc;

	@Column(name="RACE_HEIGHTDEMODIF")
	private int raceHeightdemodif;

	@Column(name="RACE_HEIGHTFEMALE")
	private int raceHeightfemale;

	@Column(name="RACE_HEIGHTMULTIPLICATEUR")
	private int raceHeightmultiplicateur;

	@Column(name="RACE_NAME", nullable=false, length=45)
	private String raceName;

	public Race() {
	}

	public int getRaceId() {
		return this.raceId;
	}

	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}

	public int getRaceAgede1() {
		return this.raceAgede1;
	}

	public void setRaceAgede1(int raceAgede1) {
		this.raceAgede1 = raceAgede1;
	}

	public int getRaceAgede2() {
		return this.raceAgede2;
	}

	public void setRaceAgede2(int raceAgede2) {
		this.raceAgede2 = raceAgede2;
	}

	public int getRaceAgemultiplicateur1() {
		return this.raceAgemultiplicateur1;
	}

	public void setRaceAgemultiplicateur1(int raceAgemultiplicateur1) {
		this.raceAgemultiplicateur1 = raceAgemultiplicateur1;
	}

	public int getRaceAgemultiplicateur2() {
		return this.raceAgemultiplicateur2;
	}

	public void setRaceAgemultiplicateur2(int raceAgemultiplicateur2) {
		this.raceAgemultiplicateur2 = raceAgemultiplicateur2;
	}

	public int getRaceBaseheight() {
		return this.raceBaseheight;
	}

	public void setRaceBaseheight(int raceBaseheight) {
		this.raceBaseheight = raceBaseheight;
	}

	public String getRaceDesc() {
		return this.raceDesc;
	}

	public void setRaceDesc(String raceDesc) {
		this.raceDesc = raceDesc;
	}

	public int getRaceHeightdemodif() {
		return this.raceHeightdemodif;
	}

	public void setRaceHeightdemodif(int raceHeightdemodif) {
		this.raceHeightdemodif = raceHeightdemodif;
	}

	public int getRaceHeightfemale() {
		return this.raceHeightfemale;
	}

	public void setRaceHeightfemale(int raceHeightfemale) {
		this.raceHeightfemale = raceHeightfemale;
	}

	public int getRaceHeightmultiplicateur() {
		return this.raceHeightmultiplicateur;
	}

	public void setRaceHeightmultiplicateur(int raceHeightmultiplicateur) {
		this.raceHeightmultiplicateur = raceHeightmultiplicateur;
	}

	public String getRaceName() {
		return this.raceName;
	}

	public void setRaceName(String raceName) {
		this.raceName = raceName;
	}

}