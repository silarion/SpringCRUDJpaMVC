package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the IMAGE_FOR_PDF_SHEET database table.
 * 
 */
@Entity
@Table(name="IMAGE_FOR_PDF_SHEET")
@NamedQuery(name="ImageForPdfSheet.findAll", query="SELECT i FROM ImageForPdfSheet i")
public class ImageForPdfSheet implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="PDF_SHEET_ID", unique=true, nullable=false)
	private int pdfSheetId;

	@Column(name="IMAGE_ID_BACK", nullable=false)
	private int imageIdBack;

	@Column(name="IMAGE_ID_FRONT", nullable=false)
	private int imageIdFront;

	@Column(name="NAME_H")
	private int nameH;

	@Column(name="NAME_W")
	private int nameW;

	@Column(name="NAME_X")
	private int nameX;

	@Column(name="NAME_Y")
	private int nameY;

	public ImageForPdfSheet() {
	}

	public int getPdfSheetId() {
		return this.pdfSheetId;
	}

	public void setPdfSheetId(int pdfSheetId) {
		this.pdfSheetId = pdfSheetId;
	}

	public int getImageIdBack() {
		return this.imageIdBack;
	}

	public void setImageIdBack(int imageIdBack) {
		this.imageIdBack = imageIdBack;
	}

	public int getImageIdFront() {
		return this.imageIdFront;
	}

	public void setImageIdFront(int imageIdFront) {
		this.imageIdFront = imageIdFront;
	}

	public int getNameH() {
		return this.nameH;
	}

	public void setNameH(int nameH) {
		this.nameH = nameH;
	}

	public int getNameW() {
		return this.nameW;
	}

	public void setNameW(int nameW) {
		this.nameW = nameW;
	}

	public int getNameX() {
		return this.nameX;
	}

	public void setNameX(int nameX) {
		this.nameX = nameX;
	}

	public int getNameY() {
		return this.nameY;
	}

	public void setNameY(int nameY) {
		this.nameY = nameY;
	}

}