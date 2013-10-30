package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the CITY_HAS_MAP database table.
 * 
 */
@Embeddable
public class CityHasMapPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="CITY_ID", insertable=false, updatable=false, unique=true, nullable=false)
	private int cityId;

	@Column(name="MAP_ID", unique=true, nullable=false)
	private int mapId;

	public CityHasMapPK() {
	}
	public int getCityId() {
		return this.cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
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
		if (!(other instanceof CityHasMapPK)) {
			return false;
		}
		CityHasMapPK castOther = (CityHasMapPK)other;
		return 
			(this.cityId == castOther.cityId)
			&& (this.mapId == castOther.mapId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.cityId;
		hash = hash * prime + this.mapId;
		
		return hash;
	}
}