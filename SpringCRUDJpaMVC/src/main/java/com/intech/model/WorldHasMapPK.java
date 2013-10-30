package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the WORLD_HAS_MAP database table.
 * 
 */
@Embeddable
public class WorldHasMapPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="WORLD_ID", insertable=false, updatable=false, unique=true, nullable=false)
	private int worldId;

	@Column(name="MAP_ID", unique=true, nullable=false)
	private int mapId;

	public WorldHasMapPK() {
	}
	public int getWorldId() {
		return this.worldId;
	}
	public void setWorldId(int worldId) {
		this.worldId = worldId;
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
		if (!(other instanceof WorldHasMapPK)) {
			return false;
		}
		WorldHasMapPK castOther = (WorldHasMapPK)other;
		return 
			(this.worldId == castOther.worldId)
			&& (this.mapId == castOther.mapId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.worldId;
		hash = hash * prime + this.mapId;
		
		return hash;
	}
}