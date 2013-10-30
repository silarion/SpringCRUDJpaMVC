package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the MENU_PARENT database table.
 * 
 */
@Entity
@Table(name="MENU_PARENT")
@NamedQuery(name="MenuParent.findAll", query="SELECT m FROM MenuParent m")
public class MenuParent implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private MenuParentPK id;

	public MenuParent() {
	}

	public MenuParentPK getId() {
		return this.id;
	}

	public void setId(MenuParentPK id) {
		this.id = id;
	}

}