package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the DISPONIBILITY database table.
 * 
 */
@Entity
@Table(name="DISPONIBILITY")
@NamedQuery(name="Disponibility.findAll", query="SELECT d FROM Disponibility d")
public class Disponibility implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="DISPONIBILITY_ID", unique=true, nullable=false)
	private int disponibilityId;

	@Lob
	@Column(name="DISPONIBILITY_DESC")
	private String disponibilityDesc;

	@Column(name="DISPONIBILITY_NAME", nullable=false, length=45)
	private String disponibilityName;

	//bi-directional many-to-one association to Objet
	@OneToMany(mappedBy="disponibility")
	private List<Objet> objets;

	public Disponibility() {
	}

	public int getDisponibilityId() {
		return this.disponibilityId;
	}

	public void setDisponibilityId(int disponibilityId) {
		this.disponibilityId = disponibilityId;
	}

	public String getDisponibilityDesc() {
		return this.disponibilityDesc;
	}

	public void setDisponibilityDesc(String disponibilityDesc) {
		this.disponibilityDesc = disponibilityDesc;
	}

	public String getDisponibilityName() {
		return this.disponibilityName;
	}

	public void setDisponibilityName(String disponibilityName) {
		this.disponibilityName = disponibilityName;
	}

	public List<Objet> getObjets() {
		return this.objets;
	}

	public void setObjets(List<Objet> objets) {
		this.objets = objets;
	}

	public Objet addObjet(Objet objet) {
		getObjets().add(objet);
		objet.setDisponibility(this);

		return objet;
	}

	public Objet removeObjet(Objet objet) {
		getObjets().remove(objet);
		objet.setDisponibility(null);

		return objet;
	}

}