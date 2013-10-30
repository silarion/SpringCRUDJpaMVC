package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the WEAPONTYPE database table.
 * 
 */
@Entity
@Table(name="WEAPONTYPE")
@NamedQuery(name="Weapontype.findAll", query="SELECT w FROM Weapontype w")
public class Weapontype implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="WEAPONTYPE_ID", unique=true, nullable=false)
	private int weapontypeId;

	public Weapontype() {
	}

	public int getWeapontypeId() {
		return this.weapontypeId;
	}

	public void setWeapontypeId(int weapontypeId) {
		this.weapontypeId = weapontypeId;
	}

}