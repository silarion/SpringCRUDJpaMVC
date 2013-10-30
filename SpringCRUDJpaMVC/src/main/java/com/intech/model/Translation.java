package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the TRANSLATION database table.
 * 
 */
@Entity
@Table(name="TRANSLATION")
@NamedQuery(name="Translation.findAll", query="SELECT t FROM Translation t")
public class Translation implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="TRANSLATION_ID", unique=true, nullable=false)
	private int translationId;

	@Lob
	private String en;

	@Lob
	private String fr;

	public Translation() {
	}

	public int getTranslationId() {
		return this.translationId;
	}

	public void setTranslationId(int translationId) {
		this.translationId = translationId;
	}

	public String getEn() {
		return this.en;
	}

	public void setEn(String en) {
		this.en = en;
	}

	public String getFr() {
		return this.fr;
	}

	public void setFr(String fr) {
		this.fr = fr;
	}

}