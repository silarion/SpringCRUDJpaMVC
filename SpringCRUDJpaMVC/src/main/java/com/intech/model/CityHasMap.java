package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CITY_HAS_MAP database table.
 * 
 */
@Entity
@Table(name="CITY_HAS_MAP")
@NamedQuery(name="CityHasMap.findAll", query="SELECT c FROM CityHasMap c")
public class CityHasMap implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CityHasMapPK id;

	//bi-directional many-to-one association to City
	@ManyToOne
	@JoinColumn(name="CITY_ID", nullable=false, insertable=false, updatable=false)
	private City city;

	public CityHasMap() {
	}

	public CityHasMapPK getId() {
		return this.id;
	}

	public void setId(CityHasMapPK id) {
		this.id = id;
	}

	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}

}