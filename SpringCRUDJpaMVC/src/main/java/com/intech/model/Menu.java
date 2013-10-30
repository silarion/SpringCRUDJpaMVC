package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the MENU database table.
 * 
 */
@Entity
@Table(name="MENU")
@NamedQuery(name="Menu.findAll", query="SELECT m FROM Menu m")
public class Menu implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MENU_ID", unique=true, nullable=false)
	private int menuId;

	@Lob
	@Column(name="MENU_DESC")
	private String menuDesc;

	@Column(name="MENU_NAME", nullable=false, length=45)
	private String menuName;

	@Column(name="MENU_RIGHT", nullable=false, length=45)
	private String menuRight;

	@Column(name="WEBPAGE_ID", nullable=false)
	private int webpageId;

	public Menu() {
	}

	public int getMenuId() {
		return this.menuId;
	}

	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

	public String getMenuDesc() {
		return this.menuDesc;
	}

	public void setMenuDesc(String menuDesc) {
		this.menuDesc = menuDesc;
	}

	public String getMenuName() {
		return this.menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuRight() {
		return this.menuRight;
	}

	public void setMenuRight(String menuRight) {
		this.menuRight = menuRight;
	}

	public int getWebpageId() {
		return this.webpageId;
	}

	public void setWebpageId(int webpageId) {
		this.webpageId = webpageId;
	}

}