package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the EQUIPMENT database table.
 * 
 */
@Entity
@Table(name="EQUIPMENT")
@NamedQuery(name="Equipment.findAll", query="SELECT e FROM Equipment e")
public class Equipment implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private EquipmentPK id;

	@Lob
	private String complement;

	public Equipment() {
	}

	public EquipmentPK getId() {
		return this.id;
	}

	public void setId(EquipmentPK id) {
		this.id = id;
	}

	public String getComplement() {
		return this.complement;
	}

	public void setComplement(String complement) {
		this.complement = complement;
	}

}