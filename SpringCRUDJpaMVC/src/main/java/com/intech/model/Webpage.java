package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the WEBPAGE database table.
 * 
 */
@Entity
@Table(name="WEBPAGE")
@NamedQuery(name="Webpage.findAll", query="SELECT w FROM Webpage w")
public class Webpage implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="WEBPAGE_ID", unique=true, nullable=false)
	private int webpageId;

	@Lob
	@Column(name="WEBPAGE_DESC")
	private String webpageDesc;

	@Column(name="WEBPAGE_NAME", nullable=false, length=45)
	private String webpageName;

	//bi-directional many-to-many association to Cut
	@ManyToMany
	@JoinTable(
		name="CUT_HAS_WEBPAGE"
		, joinColumns={
			@JoinColumn(name="WEBPAGE_ID", nullable=false)
			}
		, inverseJoinColumns={
			@JoinColumn(name="CUT_ID", nullable=false)
			}
		)
	private List<Cut> cuts;

	//bi-directional many-to-one association to Directory
	@ManyToOne
	@JoinColumn(name="DIRECTORY_ID", nullable=false)
	private Directory directory;

	public Webpage() {
	}

	public int getWebpageId() {
		return this.webpageId;
	}

	public void setWebpageId(int webpageId) {
		this.webpageId = webpageId;
	}

	public String getWebpageDesc() {
		return this.webpageDesc;
	}

	public void setWebpageDesc(String webpageDesc) {
		this.webpageDesc = webpageDesc;
	}

	public String getWebpageName() {
		return this.webpageName;
	}

	public void setWebpageName(String webpageName) {
		this.webpageName = webpageName;
	}

	public List<Cut> getCuts() {
		return this.cuts;
	}

	public void setCuts(List<Cut> cuts) {
		this.cuts = cuts;
	}

	public Directory getDirectory() {
		return this.directory;
	}

	public void setDirectory(Directory directory) {
		this.directory = directory;
	}

}