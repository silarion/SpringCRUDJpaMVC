package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the LINK database table.
 * 
 */
@Embeddable
public class LinkPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="LINK_ID", unique=true, nullable=false)
	private int linkId;

	@Column(name="IMAGE_ID", unique=true, nullable=false)
	private int imageId;

	@Column(name="LINX_URL", unique=true, nullable=false, length=75)
	private String linxUrl;

	public LinkPK() {
	}
	public int getLinkId() {
		return this.linkId;
	}
	public void setLinkId(int linkId) {
		this.linkId = linkId;
	}
	public int getImageId() {
		return this.imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public String getLinxUrl() {
		return this.linxUrl;
	}
	public void setLinxUrl(String linxUrl) {
		this.linxUrl = linxUrl;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof LinkPK)) {
			return false;
		}
		LinkPK castOther = (LinkPK)other;
		return 
			(this.linkId == castOther.linkId)
			&& (this.imageId == castOther.imageId)
			&& this.linxUrl.equals(castOther.linxUrl);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.linkId;
		hash = hash * prime + this.imageId;
		hash = hash * prime + this.linxUrl.hashCode();
		
		return hash;
	}
}