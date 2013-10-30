package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the FOLLOWER database table.
 * 
 */
@Entity
@Table(name="FOLLOWER")
@NamedQuery(name="Follower.findAll", query="SELECT f FROM Follower f")
public class Follower implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	public Follower() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

}