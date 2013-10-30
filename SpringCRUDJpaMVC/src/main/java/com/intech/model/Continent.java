package com.intech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the CONTINENT database table.
 * 
 */
@Entity
@Table(name = "CONTINENT")
@NamedQuery(name = "Continent.findAll", query = "SELECT c FROM Continent c")
public class Continent implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CONTINENT_ID", unique = true, nullable = false)
	private int continentId;

	@Lob
	@Column(name = "CONTINENT_DESC")
	private String continentDesc;

	@Column(name = "CONTINENT_NAME", nullable = false, length = 45)
	private String continentName;

	public Continent() {
	}

	public int getContinentId() {
		return this.continentId;
	}

	public void setContinentId(int continentId) {
		this.continentId = continentId;
	}

	public String getContinentDesc() {
		return this.continentDesc;
	}

	public void setContinentDesc(String continentDesc) {
		this.continentDesc = continentDesc;
	}

	public String getContinentName() {
		return this.continentName;
	}

	public void setContinentName(String continentName) {
		this.continentName = continentName;
	}

}