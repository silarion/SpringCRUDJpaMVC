package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the WEAPON database table.
 * 
 */
@Entity
@Table(name="WEAPON")
@NamedQuery(name="Weapon.findAll", query="SELECT w FROM Weapon w")
public class Weapon implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="OBJET_ID", unique=true, nullable=false)
	private int objetId;

	@Column(name="WEAPONTYPE_ID", nullable=false)
	private int weapontypeId;

	public Weapon() {
	}

	public int getObjetId() {
		return this.objetId;
	}

	public void setObjetId(int objetId) {
		this.objetId = objetId;
	}

	public int getWeapontypeId() {
		return this.weapontypeId;
	}

	public void setWeapontypeId(int weapontypeId) {
		this.weapontypeId = weapontypeId;
	}

}