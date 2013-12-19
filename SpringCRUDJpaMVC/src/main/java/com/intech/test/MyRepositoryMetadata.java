package com.intech.test;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

import javax.persistence.Id;

import org.springframework.data.repository.core.RepositoryMetadata;

public class MyRepositoryMetadata implements RepositoryMetadata {

	private final Class<?> repositoryInterface;

	public MyRepositoryMetadata(Class<?> repositoryInterface) {
		this.repositoryInterface = repositoryInterface;
	}

	@Override
	public Class<? extends Serializable> getIdType() {
		for (Field field : repositoryInterface.getDeclaredFields()) {
			if (field.getAnnotation(Id.class) != null) {
				return (Class<? extends Serializable>) field.getType();
			}
		}
		return null;
	}

	@Override
	public Class<?> getDomainType() {
		return this.repositoryInterface;
	}

	@Override
	public Class<?> getRepositoryInterface() {
		return this.repositoryInterface;
	}

	@Override
	public Class<?> getReturnedDomainClass(Method method) {
		return this.repositoryInterface;
	}

}
