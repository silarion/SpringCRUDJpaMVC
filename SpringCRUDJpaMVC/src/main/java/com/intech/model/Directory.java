package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the DIRECTORY database table.
 * 
 */
@Entity
@Table(name="DIRECTORY")
@NamedQuery(name="Directory.findAll", query="SELECT d FROM Directory d")
public class Directory implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="DIRECTORY_ID", unique=true, nullable=false)
	private int directoryId;

	@Lob
	@Column(name="DIRECTORY_DESC")
	private String directoryDesc;

	@Column(name="DIRECTORY_NAME", length=45)
	private String directoryName;

	@Column(name="MAIN_DIRECTORY", nullable=false)
	private int mainDirectory;

	//bi-directional many-to-one association to Webpage
	@OneToMany(mappedBy="directory")
	private List<Webpage> webpages;

	public Directory() {
	}

	public int getDirectoryId() {
		return this.directoryId;
	}

	public void setDirectoryId(int directoryId) {
		this.directoryId = directoryId;
	}

	public String getDirectoryDesc() {
		return this.directoryDesc;
	}

	public void setDirectoryDesc(String directoryDesc) {
		this.directoryDesc = directoryDesc;
	}

	public String getDirectoryName() {
		return this.directoryName;
	}

	public void setDirectoryName(String directoryName) {
		this.directoryName = directoryName;
	}

	public int getMainDirectory() {
		return this.mainDirectory;
	}

	public void setMainDirectory(int mainDirectory) {
		this.mainDirectory = mainDirectory;
	}

	public List<Webpage> getWebpages() {
		return this.webpages;
	}

	public void setWebpages(List<Webpage> webpages) {
		this.webpages = webpages;
	}

	public Webpage addWebpage(Webpage webpage) {
		getWebpages().add(webpage);
		webpage.setDirectory(this);

		return webpage;
	}

	public Webpage removeWebpage(Webpage webpage) {
		getWebpages().remove(webpage);
		webpage.setDirectory(null);

		return webpage;
	}

}