package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CHARACTERISTIC database table.
 * 
 */
@Entity
@Table(name="CHARACTERISTIC")
@NamedQuery(name="Characteristic.findAll", query="SELECT c FROM Characteristic c")
public class Characteristic implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="CHARACTERISTIC_ID", unique=true, nullable=false)
	private int characteristicId;

	@Column(name="CHARACTERISTIC_ABBR", nullable=false, length=20)
	private String characteristicAbbr;

	@Lob
	@Column(name="CHARACTERISTIC_DESC")
	private String characteristicDesc;

	@Column(name="CHARACTERISTIC_MAX", nullable=false, length=20)
	private String characteristicMax;

	@Column(name="CHARACTERISTIC_NAME", nullable=false, length=45)
	private String characteristicName;

	@Column(name="CHARACTERISTIC_ORDER", nullable=false)
	private int characteristicOrder;

	public Characteristic() {
	}

	public int getCharacteristicId() {
		return this.characteristicId;
	}

	public void setCharacteristicId(int characteristicId) {
		this.characteristicId = characteristicId;
	}

	public String getCharacteristicAbbr() {
		return this.characteristicAbbr;
	}

	public void setCharacteristicAbbr(String characteristicAbbr) {
		this.characteristicAbbr = characteristicAbbr;
	}

	public String getCharacteristicDesc() {
		return this.characteristicDesc;
	}

	public void setCharacteristicDesc(String characteristicDesc) {
		this.characteristicDesc = characteristicDesc;
	}

	public String getCharacteristicMax() {
		return this.characteristicMax;
	}

	public void setCharacteristicMax(String characteristicMax) {
		this.characteristicMax = characteristicMax;
	}

	public String getCharacteristicName() {
		return this.characteristicName;
	}

	public void setCharacteristicName(String characteristicName) {
		this.characteristicName = characteristicName;
	}

	public int getCharacteristicOrder() {
		return this.characteristicOrder;
	}

	public void setCharacteristicOrder(int characteristicOrder) {
		this.characteristicOrder = characteristicOrder;
	}

}