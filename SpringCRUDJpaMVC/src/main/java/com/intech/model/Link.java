package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the LINK database table.
 * 
 */
@Entity
@Table(name="LINK")
@NamedQuery(name="Link.findAll", query="SELECT l FROM Link l")
public class Link implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private LinkPK id;

	public Link() {
	}

	public LinkPK getId() {
		return this.id;
	}

	public void setId(LinkPK id) {
		this.id = id;
	}

}