package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the IMAGE database table.
 * 
 */
@Entity
@Table(name="IMAGE")
@NamedQuery(name="Image.findAll", query="SELECT i FROM Image i")
public class Image implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="IMAGE_ID", unique=true, nullable=false)
	private int imageId;

	@Column(name="COPYRIGHT_ID", nullable=false)
	private int copyrightId;

	@Column(name="DIRECTORY_ID", nullable=false)
	private int directoryId;

	@Lob
	@Column(name="IMAGE_DESC")
	private String imageDesc;

	@Column(name="IMAGE_HEIGHT")
	private int imageHeight;

	@Column(name="IMAGE_NAME", length=45)
	private String imageName;

	@Column(name="IMAGE_SRC", length=255)
	private String imageSrc;

	@Column(name="IMAGE_WIDTH")
	private int imageWidth;

	@Column(name="SMALL_IMAGE_SRC", length=50)
	private String smallImageSrc;

	//bi-directional many-to-many association to Cut
	@ManyToMany
	@JoinTable(
		name="IMAGE_HAS_CUT"
		, joinColumns={
			@JoinColumn(name="IMAGE_ID", nullable=false)
			}
		, inverseJoinColumns={
			@JoinColumn(name="CUT_ID", nullable=false)
			}
		)
	private List<Cut> cuts;

	public Image() {
	}

	public int getImageId() {
		return this.imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public int getCopyrightId() {
		return this.copyrightId;
	}

	public void setCopyrightId(int copyrightId) {
		this.copyrightId = copyrightId;
	}

	public int getDirectoryId() {
		return this.directoryId;
	}

	public void setDirectoryId(int directoryId) {
		this.directoryId = directoryId;
	}

	public String getImageDesc() {
		return this.imageDesc;
	}

	public void setImageDesc(String imageDesc) {
		this.imageDesc = imageDesc;
	}

	public int getImageHeight() {
		return this.imageHeight;
	}

	public void setImageHeight(int imageHeight) {
		this.imageHeight = imageHeight;
	}

	public String getImageName() {
		return this.imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getImageSrc() {
		return this.imageSrc;
	}

	public void setImageSrc(String imageSrc) {
		this.imageSrc = imageSrc;
	}

	public int getImageWidth() {
		return this.imageWidth;
	}

	public void setImageWidth(int imageWidth) {
		this.imageWidth = imageWidth;
	}

	public String getSmallImageSrc() {
		return this.smallImageSrc;
	}

	public void setSmallImageSrc(String smallImageSrc) {
		this.smallImageSrc = smallImageSrc;
	}

	public List<Cut> getCuts() {
		return this.cuts;
	}

	public void setCuts(List<Cut> cuts) {
		this.cuts = cuts;
	}

}