package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the COPYRIGHT database table.
 * 
 */
@Entity
@Table(name="COPYRIGHT")
@NamedQuery(name="Copyright.findAll", query="SELECT c FROM Copyright c")
public class Copyright implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="COPYRIGHT_ID", unique=true, nullable=false)
	private int copyrightId;

	@Lob
	@Column(name="COPYRIGHT_DESC")
	private String copyrightDesc;

	@Column(name="COPYRIGHT_NAME", length=45)
	private String copyrightName;

	@Column(name="COPYRIGHT_SRC", length=255)
	private String copyrightSrc;

	public Copyright() {
	}

	public int getCopyrightId() {
		return this.copyrightId;
	}

	public void setCopyrightId(int copyrightId) {
		this.copyrightId = copyrightId;
	}

	public String getCopyrightDesc() {
		return this.copyrightDesc;
	}

	public void setCopyrightDesc(String copyrightDesc) {
		this.copyrightDesc = copyrightDesc;
	}

	public String getCopyrightName() {
		return this.copyrightName;
	}

	public void setCopyrightName(String copyrightName) {
		this.copyrightName = copyrightName;
	}

	public String getCopyrightSrc() {
		return this.copyrightSrc;
	}

	public void setCopyrightSrc(String copyrightSrc) {
		this.copyrightSrc = copyrightSrc;
	}

}