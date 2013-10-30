package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the REAGENT_TYPE database table.
 * 
 */
@Entity
@Table(name="REAGENT_TYPE")
@NamedQuery(name="ReagentType.findAll", query="SELECT r FROM ReagentType r")
public class ReagentType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="REAGENT_TYPE_ID", unique=true, nullable=false)
	private int reagentTypeId;

	@Lob
	@Column(name="REAGENT_TYPE_DESC")
	private String reagentTypeDesc;

	@Column(name="REAGENT_TYPE_NAME", length=255)
	private String reagentTypeName;

	public ReagentType() {
	}

	public int getReagentTypeId() {
		return this.reagentTypeId;
	}

	public void setReagentTypeId(int reagentTypeId) {
		this.reagentTypeId = reagentTypeId;
	}

	public String getReagentTypeDesc() {
		return this.reagentTypeDesc;
	}

	public void setReagentTypeDesc(String reagentTypeDesc) {
		this.reagentTypeDesc = reagentTypeDesc;
	}

	public String getReagentTypeName() {
		return this.reagentTypeName;
	}

	public void setReagentTypeName(String reagentTypeName) {
		this.reagentTypeName = reagentTypeName;
	}

}