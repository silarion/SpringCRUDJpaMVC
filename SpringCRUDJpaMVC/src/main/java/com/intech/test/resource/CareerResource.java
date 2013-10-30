package com.intech.test.resource;

import org.springframework.hateoas.ResourceSupport;

public class CareerResource extends ResourceSupport {
	private int authorId;
	private String name;

	public CareerResource() {
	}

	public CareerResource(int authorId, String name) {
		this.authorId = authorId;
		this.name = name;
	}

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}