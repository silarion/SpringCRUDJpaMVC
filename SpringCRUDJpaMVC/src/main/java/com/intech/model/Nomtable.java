package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the NOMTABLE database table.
 * 
 */
@Entity
@Table(name="NOMTABLE")
@NamedQuery(name="Nomtable.findAll", query="SELECT n FROM Nomtable n")
public class Nomtable implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="NOMTABLE_ID", unique=true, nullable=false)
	private int nomtableId;

	@Column(name="NOMTABLE_AREF", length=20)
	private String nomtableAref;

	@Column(name="NOMTABLE_IDVAR", length=20)
	private String nomtableIdvar;

	@Column(name="NOMTABLE_NAME", nullable=false, length=45)
	private String nomtableName;

	@Column(name="WEBPAGE_ID", nullable=false)
	private int webpageId;

	//bi-directional many-to-one association to Objet
	@OneToMany(mappedBy="nomtable")
	private List<Objet> objets;

	public Nomtable() {
	}

	public int getNomtableId() {
		return this.nomtableId;
	}

	public void setNomtableId(int nomtableId) {
		this.nomtableId = nomtableId;
	}

	public String getNomtableAref() {
		return this.nomtableAref;
	}

	public void setNomtableAref(String nomtableAref) {
		this.nomtableAref = nomtableAref;
	}

	public String getNomtableIdvar() {
		return this.nomtableIdvar;
	}

	public void setNomtableIdvar(String nomtableIdvar) {
		this.nomtableIdvar = nomtableIdvar;
	}

	public String getNomtableName() {
		return this.nomtableName;
	}

	public void setNomtableName(String nomtableName) {
		this.nomtableName = nomtableName;
	}

	public int getWebpageId() {
		return this.webpageId;
	}

	public void setWebpageId(int webpageId) {
		this.webpageId = webpageId;
	}

	public List<Objet> getObjets() {
		return this.objets;
	}

	public void setObjets(List<Objet> objets) {
		this.objets = objets;
	}

	public Objet addObjet(Objet objet) {
		getObjets().add(objet);
		objet.setNomtable(this);

		return objet;
	}

	public Objet removeObjet(Objet objet) {
		getObjets().remove(objet);
		objet.setNomtable(null);

		return objet;
	}

}