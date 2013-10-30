package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the WORLD_HAS_MAP database table.
 * 
 */
@Entity
@Table(name="WORLD_HAS_MAP")
@NamedQuery(name="WorldHasMap.findAll", query="SELECT w FROM WorldHasMap w")
public class WorldHasMap implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private WorldHasMapPK id;

	//bi-directional many-to-one association to World
	@ManyToOne
	@JoinColumn(name="WORLD_ID", nullable=false, insertable=false, updatable=false)
	private World world;

	public WorldHasMap() {
	}

	public WorldHasMapPK getId() {
		return this.id;
	}

	public void setId(WorldHasMapPK id) {
		this.id = id;
	}

	public World getWorld() {
		return this.world;
	}

	public void setWorld(World world) {
		this.world = world;
	}

}