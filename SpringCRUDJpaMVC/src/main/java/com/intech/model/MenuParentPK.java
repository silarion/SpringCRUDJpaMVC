package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the MENU_PARENT database table.
 * 
 */
@Embeddable
public class MenuParentPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="MENU_ID", unique=true, nullable=false)
	private int menuId;

	@Column(name="MENU_ID_PARENT", unique=true, nullable=false)
	private int menuIdParent;

	public MenuParentPK() {
	}
	public int getMenuId() {
		return this.menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public int getMenuIdParent() {
		return this.menuIdParent;
	}
	public void setMenuIdParent(int menuIdParent) {
		this.menuIdParent = menuIdParent;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof MenuParentPK)) {
			return false;
		}
		MenuParentPK castOther = (MenuParentPK)other;
		return 
			(this.menuId == castOther.menuId)
			&& (this.menuIdParent == castOther.menuIdParent);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.menuId;
		hash = hash * prime + this.menuIdParent;
		
		return hash;
	}
}