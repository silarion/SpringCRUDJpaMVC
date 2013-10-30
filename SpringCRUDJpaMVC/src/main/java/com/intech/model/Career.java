package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CAREER database table.
 * 
 */
@Entity
@Table(name="CAREER")
@NamedQuery(name="Career.findAll", query="SELECT c FROM Career c")
public class Career implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="CAREER_ID", unique=true, nullable=false)
	private int careerId;

	private int base;

	@Lob
	@Column(name="CAREER_DESC")
	private String careerDesc;

	@Column(name="CAREER_NAME", nullable=false, length=45)
	private String careerName;

	@Column(name="MAIN_CAREER", nullable=false)
	private int mainCareer;

	public Career() {
	}

	public int getCareerId() {
		return this.careerId;
	}

	public void setCareerId(int careerId) {
		this.careerId = careerId;
	}

	public int getBase() {
		return this.base;
	}

	public void setBase(int base) {
		this.base = base;
	}

	public String getCareerDesc() {
		return this.careerDesc;
	}

	public void setCareerDesc(String careerDesc) {
		this.careerDesc = careerDesc;
	}

	public String getCareerName() {
		return this.careerName;
	}

	public void setCareerName(String careerName) {
		this.careerName = careerName;
	}

	public int getMainCareer() {
		return this.mainCareer;
	}

	public void setMainCareer(int mainCareer) {
		this.mainCareer = mainCareer;
	}

}