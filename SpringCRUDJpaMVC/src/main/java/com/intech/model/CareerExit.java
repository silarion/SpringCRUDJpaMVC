package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CAREER_EXIT database table.
 * 
 */
@Entity
@Table(name="CAREER_EXIT")
@NamedQuery(name="CareerExit.findAll", query="SELECT c FROM CareerExit c")
public class CareerExit implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CareerExitPK id;

	@Lob
	private String complement;

	public CareerExit() {
	}

	public CareerExitPK getId() {
		return this.id;
	}

	public void setId(CareerExitPK id) {
		this.id = id;
	}

	public String getComplement() {
		return this.complement;
	}

	public void setComplement(String complement) {
		this.complement = complement;
	}

}