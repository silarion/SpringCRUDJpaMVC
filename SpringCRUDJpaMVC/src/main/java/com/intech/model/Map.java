package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the MAP database table.
 * 
 */
@Entity
@Table(name="MAP")
@NamedQuery(name="Map.findAll", query="SELECT m FROM Map m")
public class Map implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MAP_ID", unique=true, nullable=false)
	private int mapId;

	@Column(name="IMAGE_ID", nullable=false)
	private int imageId;

	@Lob
	@Column(name="MAP_DESC")
	private String mapDesc;

	@Column(name="MAP_NAME", nullable=false, length=45)
	private String mapName;

	//bi-directional many-to-many association to City
	@ManyToMany
	@JoinTable(
		name="CITY_HAS_MAP"
		, joinColumns={
			@JoinColumn(name="MAP_ID", nullable=false)
			}
		, inverseJoinColumns={
			@JoinColumn(name="CITY_ID", nullable=false)
			}
		)
	private List<City> cities;

	//bi-directional many-to-many association to Continent
	@ManyToMany
	@JoinTable(
		name="CONTINENT_HAS_MAP"
		, joinColumns={
			@JoinColumn(name="MAP_ID", nullable=false)
			}
		, inverseJoinColumns={
			@JoinColumn(name="CONTINENT_ID", nullable=false)
			}
		)
	private List<Continent> continents;

	//bi-directional many-to-many association to Country
	@ManyToMany
	@JoinTable(
		name="COUNTRY_HAS_MAP"
		, joinColumns={
			@JoinColumn(name="MAP_ID", nullable=false)
			}
		, inverseJoinColumns={
			@JoinColumn(name="COUNTRY_ID", nullable=false)
			}
		)
	private List<Country> countries;

	public Map() {
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

	public String getMapDesc() {
		return this.mapDesc;
	}

	public void setMapDesc(String mapDesc) {
		this.mapDesc = mapDesc;
	}

	public String getMapName() {
		return this.mapName;
	}

	public void setMapName(String mapName) {
		this.mapName = mapName;
	}

	public List<City> getCities() {
		return this.cities;
	}

	public void setCities(List<City> cities) {
		this.cities = cities;
	}

	public List<Continent> getContinents() {
		return this.continents;
	}

	public void setContinents(List<Continent> continents) {
		this.continents = continents;
	}

	public List<Country> getCountries() {
		return this.countries;
	}

	public void setCountries(List<Country> countries) {
		this.countries = countries;
	}

}