package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CONTINENT_HAS_MAP database table.
 * 
 */
@Entity
@Table(name="CONTINENT_HAS_MAP")
@NamedQuery(name="ContinentHasMap.findAll", query="SELECT c FROM ContinentHasMap c")
public class ContinentHasMap implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private ContinentHasMapPK id;

	//bi-directional many-to-one association to Continent
	@ManyToOne
	@JoinColumn(name="CONTINENT_ID", nullable=false, insertable=false, updatable=false)
	private Continent continent;

	public ContinentHasMap() {
	}

	public ContinentHasMapPK getId() {
		return this.id;
	}

	public void setId(ContinentHasMapPK id) {
		this.id = id;
	}

	public Continent getContinent() {
		return this.continent;
	}

	public void setContinent(Continent continent) {
		this.continent = continent;
	}

}