package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the MENU_RIGHT database table.
 * 
 */
@Entity
@Table(name="MENU_RIGHT")
@NamedQuery(name="MenuRight.findAll", query="SELECT m FROM MenuRight m")
public class MenuRight implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MENU_RIGHT_ID", unique=true, nullable=false)
	private int menuRightId;

	@Column(name="MENU_RIGHT_NAME", nullable=false, length=10)
	private String menuRightName;

	public MenuRight() {
	}

	public int getMenuRightId() {
		return this.menuRightId;
	}

	public void setMenuRightId(int menuRightId) {
		this.menuRightId = menuRightId;
	}

	public String getMenuRightName() {
		return this.menuRightName;
	}

	public void setMenuRightName(String menuRightName) {
		this.menuRightName = menuRightName;
	}

}