package com.intech.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ALIGNMENT database table.
 * 
 */
@Entity
@Table(name="ALIGNMENT")
@NamedQuery(name="Alignment.findAll", query="SELECT a FROM Alignment a")
public class Alignment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ALIGNMENT_ID", unique=true, nullable=false)
	private int alignmentId;

	@Lob
	@Column(name="ALIGNMENT_DESC")
	private String alignmentDesc;

	@Column(name="ALIGNMENT_NAME", length=45)
	private String alignmentName;

	public Alignment() {
	}

	public int getAlignmentId() {
		return this.alignmentId;
	}

	public void setAlignmentId(int alignmentId) {
		this.alignmentId = alignmentId;
	}

	public String getAlignmentDesc() {
		return this.alignmentDesc;
	}

	public void setAlignmentDesc(String alignmentDesc) {
		this.alignmentDesc = alignmentDesc;
	}

	public String getAlignmentName() {
		return this.alignmentName;
	}

	public void setAlignmentName(String alignmentName) {
		this.alignmentName = alignmentName;
	}

}