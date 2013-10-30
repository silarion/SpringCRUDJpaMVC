package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the MUSIC database table.
 * 
 */
@Entity
@Table(name="MUSIC")
@NamedQuery(name="Music.findAll", query="SELECT m FROM Music m")
public class Music implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Music() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}