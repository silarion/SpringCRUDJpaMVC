package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CASTING_HAS_REAGENT database table.
 * 
 */
@Entity
@Table(name="CASTING_HAS_REAGENT")
@NamedQuery(name="CastingHasReagent.findAll", query="SELECT c FROM CastingHasReagent c")
public class CastingHasReagent implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CastingHasReagentPK id;

	public CastingHasReagent() {
	}

	public CastingHasReagentPK getId() {
		return this.id;
	}

	public void setId(CastingHasReagentPK id) {
		this.id = id;
	}

}