package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the COUNTRY_HAS_MAP database table.
 * 
 */
@Entity
@Table(name="COUNTRY_HAS_MAP")
@NamedQuery(name="CountryHasMap.findAll", query="SELECT c FROM CountryHasMap c")
public class CountryHasMap implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CountryHasMapPK id;

	//bi-directional many-to-one association to Country
	@ManyToOne
	@JoinColumn(name="COUNTRY_ID", nullable=false, insertable=false, updatable=false)
	private Country country;

	public CountryHasMap() {
	}

	public CountryHasMapPK getId() {
		return this.id;
	}

	public void setId(CountryHasMapPK id) {
		this.id = id;
	}

	public Country getCountry() {
		return this.country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

}