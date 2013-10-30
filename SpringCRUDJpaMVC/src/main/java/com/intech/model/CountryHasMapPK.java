package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the COUNTRY_HAS_MAP database table.
 * 
 */
@Embeddable
public class CountryHasMapPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="COUNTRY_ID", insertable=false, updatable=false, unique=true, nullable=false)
	private int countryId;

	@Column(name="MAP_ID", unique=true, nullable=false)
	private int mapId;

	public CountryHasMapPK() {
	}
	public int getCountryId() {
		return this.countryId;
	}
	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}
	public int getMapId() {
		return this.mapId;
	}
	public void setMapId(int mapId) {
		this.mapId = mapId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof CountryHasMapPK)) {
			return false;
		}
		CountryHasMapPK castOther = (CountryHasMapPK)other;
		return 
			(this.countryId == castOther.countryId)
			&& (this.mapId == castOther.mapId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.countryId;
		hash = hash * prime + this.mapId;
		
		return hash;
	}
}