package com.intech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the CITY database table.
 * 
 */
@Entity
@Table(name = "CITY")
@NamedQuery(name = "City.findAll", query = "SELECT c FROM City c")
public class City implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CITY_ID", unique = true, nullable = false)
	private int cityId;

	@Lob
	@Column(name = "CITY_DESC")
	private String cityDesc;

	@Column(name = "CITY_NAME", nullable = false, length = 45)
	private String cityName;

	public City() {
	}

	public int getCityId() {
		return this.cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityDesc() {
		return this.cityDesc;
	}

	public void setCityDesc(String cityDesc) {
		this.cityDesc = cityDesc;
	}

	public String getCityName() {
		return this.cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

}