package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the CONTINENT_HAS_MAP database table.
 * 
 */
@Embeddable
public class ContinentHasMapPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="CONTINENT_ID", insertable=false, updatable=false, unique=true, nullable=false)
	private int continentId;

	@Column(name="MAP_ID", unique=true, nullable=false)
	private int mapId;

	public ContinentHasMapPK() {
	}
	public int getContinentId() {
		return this.continentId;
	}
	public void setContinentId(int continentId) {
		this.continentId = continentId;
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
		if (!(other instanceof ContinentHasMapPK)) {
			return false;
		}
		ContinentHasMapPK castOther = (ContinentHasMapPK)other;
		return 
			(this.continentId == castOther.continentId)
			&& (this.mapId == castOther.mapId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.continentId;
		hash = hash * prime + this.mapId;
		
		return hash;
	}
}