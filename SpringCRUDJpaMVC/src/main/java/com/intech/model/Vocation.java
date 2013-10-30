package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the VOCATION database table.
 * 
 */
@Entity
@Table(name="VOCATION")
@NamedQuery(name="Vocation.findAll", query="SELECT v FROM Vocation v")
public class Vocation implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="VOCATION_ID", unique=true, nullable=false)
	private int vocationId;

	@Lob
	@Column(name="VOCATION_DESC")
	private String vocationDesc;

	@Column(name="VOCATION_NAME", nullable=false, length=45)
	private String vocationName;

	public Vocation() {
	}

	public int getVocationId() {
		return this.vocationId;
	}

	public void setVocationId(int vocationId) {
		this.vocationId = vocationId;
	}

	public String getVocationDesc() {
		return this.vocationDesc;
	}

	public void setVocationDesc(String vocationDesc) {
		this.vocationDesc = vocationDesc;
	}

	public String getVocationName() {
		return this.vocationName;
	}

	public void setVocationName(String vocationName) {
		this.vocationName = vocationName;
	}

}