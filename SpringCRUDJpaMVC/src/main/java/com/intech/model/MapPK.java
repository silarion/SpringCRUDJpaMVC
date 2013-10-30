package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the MAP database table.
 * 
 */
@Embeddable
public class MapPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="MAP_ID", unique=true, nullable=false)
	private int mapId;

	@Column(name="IMAGE_ID", unique=true, nullable=false)
	private int imageId;

	public MapPK() {
	}
	public int getMapId() {
		return this.mapId;
	}
	public void setMapId(int mapId) {
		this.mapId = mapId;
	}
	public int getImageId() {
		return this.imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof MapPK)) {
			return false;
		}
		MapPK castOther = (MapPK)other;
		return 
			(this.mapId == castOther.mapId)
			&& (this.imageId == castOther.imageId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.mapId;
		hash = hash * prime + this.imageId;
		
		return hash;
	}
}