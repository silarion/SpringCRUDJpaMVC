package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the LANGUAGE database table.
 * 
 */
@Entity
@Table(name="LANGUAGE")
@NamedQuery(name="Language.findAll", query="SELECT l FROM Language l")
public class Language implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="LANGUAGE_ID", unique=true, nullable=false)
	private int languageId;

	@Lob
	@Column(name="LANGUAGE_DESC")
	private String languageDesc;

	@Column(name="LANGUAGE_NAME", length=45)
	private String languageName;

	public Language() {
	}

	public int getLanguageId() {
		return this.languageId;
	}

	public void setLanguageId(int languageId) {
		this.languageId = languageId;
	}

	public String getLanguageDesc() {
		return this.languageDesc;
	}

	public void setLanguageDesc(String languageDesc) {
		this.languageDesc = languageDesc;
	}

	public String getLanguageName() {
		return this.languageName;
	}

	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}

}