package com.intech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the COUNTRY database table.
 * 
 */
@Entity
@Table(name = "COUNTRY")
@NamedQuery(name = "Country.findAll", query = "SELECT c FROM Country c")
public class Country implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "COUNTRY_ID", unique = true, nullable = false)
	private int countryId;

	@Lob
	@Column(name = "COUNTRY_DESC")
	private String countryDesc;

	@Column(name = "COUNTRY_NAME", nullable = false, length = 45)
	private String countryName;

	public Country() {
	}

	public int getCountryId() {
		return this.countryId;
	}

	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}

	public String getCountryDesc() {
		return this.countryDesc;
	}

	public void setCountryDesc(String countryDesc) {
		this.countryDesc = countryDesc;
	}

	public String getCountryName() {
		return this.countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

}