package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the SEX database table.
 * 
 */
@Entity
@Table(name="SEX")
@NamedQuery(name="Sex.findAll", query="SELECT s FROM Sex s")
public class Sex implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="SEX_ID", unique=true, nullable=false)
	private int sexId;

	@Lob
	@Column(name="SEX_DESC")
	private String sexDesc;

	@Column(name="SEX_NAME", nullable=false, length=45)
	private String sexName;

	public Sex() {
	}

	public int getSexId() {
		return this.sexId;
	}

	public void setSexId(int sexId) {
		this.sexId = sexId;
	}

	public String getSexDesc() {
		return this.sexDesc;
	}

	public void setSexDesc(String sexDesc) {
		this.sexDesc = sexDesc;
	}

	public String getSexName() {
		return this.sexName;
	}

	public void setSexName(String sexName) {
		this.sexName = sexName;
	}

}