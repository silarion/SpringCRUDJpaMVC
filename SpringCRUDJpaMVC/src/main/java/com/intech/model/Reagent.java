package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the REAGENT database table.
 * 
 */
@Entity
@Table(name="REAGENT")
@NamedQuery(name="Reagent.findAll", query="SELECT r FROM Reagent r")
public class Reagent implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="REAGENT_ID", unique=true, nullable=false)
	private int reagentId;

	@Column(name="DISPONIBILITY_ID", nullable=false)
	private int disponibilityId;

	@Column(name="REAGENT_COST", length=45)
	private String reagentCost;

	@Lob
	@Column(name="REAGENT_DESC")
	private String reagentDesc;

	@Column(name="REAGENT_NAME", length=255)
	private String reagentName;

	@Column(name="REAGENT_TYPE_ID", nullable=false)
	private int reagentTypeId;

	public Reagent() {
	}

	public int getReagentId() {
		return this.reagentId;
	}

	public void setReagentId(int reagentId) {
		this.reagentId = reagentId;
	}

	public int getDisponibilityId() {
		return this.disponibilityId;
	}

	public void setDisponibilityId(int disponibilityId) {
		this.disponibilityId = disponibilityId;
	}

	public String getReagentCost() {
		return this.reagentCost;
	}

	public void setReagentCost(String reagentCost) {
		this.reagentCost = reagentCost;
	}

	public String getReagentDesc() {
		return this.reagentDesc;
	}

	public void setReagentDesc(String reagentDesc) {
		this.reagentDesc = reagentDesc;
	}

	public String getReagentName() {
		return this.reagentName;
	}

	public void setReagentName(String reagentName) {
		this.reagentName = reagentName;
	}

	public int getReagentTypeId() {
		return this.reagentTypeId;
	}

	public void setReagentTypeId(int reagentTypeId) {
		this.reagentTypeId = reagentTypeId;
	}

}