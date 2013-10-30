package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the OBJET database table.
 * 
 */
@Entity
@Table(name="OBJET")
@NamedQuery(name="Objet.findAll", query="SELECT o FROM Objet o")
public class Objet implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private ObjetPK id;

	@Column(name="OBJET_COST", length=20)
	private String objetCost;

	@Lob
	@Column(name="OBJET_DESC")
	private String objetDesc;

	@Column(name="OBJET_NAME", length=255)
	private String objetName;

	@Column(name="OBJET_SPACE")
	private int objetSpace;

	//bi-directional many-to-one association to Disponibility
	@ManyToOne
	@JoinColumn(name="DISPONIBILITY_ID", nullable=false, insertable=false, updatable=false)
	private Disponibility disponibility;

	//bi-directional many-to-one association to Nomtable
	@ManyToOne
	@JoinColumn(name="NOMTABLE_ID", nullable=false, insertable=false, updatable=false)
	private Nomtable nomtable;

	public Objet() {
	}

	public ObjetPK getId() {
		return this.id;
	}

	public void setId(ObjetPK id) {
		this.id = id;
	}

	public String getObjetCost() {
		return this.objetCost;
	}

	public void setObjetCost(String objetCost) {
		this.objetCost = objetCost;
	}

	public String getObjetDesc() {
		return this.objetDesc;
	}

	public void setObjetDesc(String objetDesc) {
		this.objetDesc = objetDesc;
	}

	public String getObjetName() {
		return this.objetName;
	}

	public void setObjetName(String objetName) {
		this.objetName = objetName;
	}

	public int getObjetSpace() {
		return this.objetSpace;
	}

	public void setObjetSpace(int objetSpace) {
		this.objetSpace = objetSpace;
	}

	public Disponibility getDisponibility() {
		return this.disponibility;
	}

	public void setDisponibility(Disponibility disponibility) {
		this.disponibility = disponibility;
	}

	public Nomtable getNomtable() {
		return this.nomtable;
	}

	public void setNomtable(Nomtable nomtable) {
		this.nomtable = nomtable;
	}

}