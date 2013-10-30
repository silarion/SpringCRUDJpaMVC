package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the CUT database table.
 * 
 */
@Entity
@Table(name="CUT")
@NamedQuery(name="Cut.findAll", query="SELECT c FROM Cut c")
public class Cut implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="CUT_ID", unique=true, nullable=false)
	private int cutId;

	@Column(nullable=false, length=255)
	private String coords;

	@Lob
	@Column(name="CUT_DESC")
	private String cutDesc;

	@Column(name="CUT_TYPE", length=5)
	private String cutType;

	@Column(nullable=false)
	private int id;

	@Column(name="NOMTABLE_ID", nullable=false)
	private int nomtableId;

	//bi-directional many-to-many association to Image
	@ManyToMany(mappedBy="cuts")
	private List<Image> images;

	//bi-directional many-to-many association to Webpage
	@ManyToMany(mappedBy="cuts")
	private List<Webpage> webpages;

	public Cut() {
	}

	public int getCutId() {
		return this.cutId;
	}

	public void setCutId(int cutId) {
		this.cutId = cutId;
	}

	public String getCoords() {
		return this.coords;
	}

	public void setCoords(String coords) {
		this.coords = coords;
	}

	public String getCutDesc() {
		return this.cutDesc;
	}

	public void setCutDesc(String cutDesc) {
		this.cutDesc = cutDesc;
	}

	public String getCutType() {
		return this.cutType;
	}

	public void setCutType(String cutType) {
		this.cutType = cutType;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNomtableId() {
		return this.nomtableId;
	}

	public void setNomtableId(int nomtableId) {
		this.nomtableId = nomtableId;
	}

	public List<Image> getImages() {
		return this.images;
	}

	public void setImages(List<Image> images) {
		this.images = images;
	}

	public List<Webpage> getWebpages() {
		return this.webpages;
	}

	public void setWebpages(List<Webpage> webpages) {
		this.webpages = webpages;
	}

}