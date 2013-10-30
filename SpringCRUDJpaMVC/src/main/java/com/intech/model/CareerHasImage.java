package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CAREER_HAS_IMAGE database table.
 * 
 */
@Entity
@Table(name="CAREER_HAS_IMAGE")
@NamedQuery(name="CareerHasImage.findAll", query="SELECT c FROM CareerHasImage c")
public class CareerHasImage implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CareerHasImagePK id;

	public CareerHasImage() {
	}

	public CareerHasImagePK getId() {
		return this.id;
	}

	public void setId(CareerHasImagePK id) {
		this.id = id;
	}

}