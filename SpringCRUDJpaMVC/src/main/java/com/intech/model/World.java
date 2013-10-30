package com.intech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the WORLD database table.
 * 
 */
@Entity
@Table(name = "WORLD")
@NamedQuery(name = "World.findAll", query = "SELECT w FROM World w")
public class World implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "WORLD_ID", unique = true, nullable = false)
	private int worldId;

	@Lob
	@Column(name = "WORLD_DESC")
	private String worldDesc;

	@Column(name = "WORLD_NAME", nullable = false, length = 45)
	private String worldName;

	public World() {
	}

	public int getWorldId() {
		return this.worldId;
	}

	public void setWorldId(int worldId) {
		this.worldId = worldId;
	}

	public String getWorldDesc() {
		return this.worldDesc;
	}

	public void setWorldDesc(String worldDesc) {
		this.worldDesc = worldDesc;
	}

	public String getWorldName() {
		return this.worldName;
	}

	public void setWorldName(String worldName) {
		this.worldName = worldName;
	}

}