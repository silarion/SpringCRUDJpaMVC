package com.intech.test;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.aop.framework.ProxyFactory;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.core.RepositoryInformation;
import org.springframework.data.repository.core.RepositoryMetadata;
import org.springframework.data.repository.core.support.AnnotationRepositoryMetadata;
import org.springframework.data.repository.core.support.DefaultRepositoryMetadata;
import org.springframework.data.repository.core.support.RepositoryProxyPostProcessor;
import org.springframework.util.Assert;

public class MyJpaRepositoryFactory extends JpaRepositoryFactory {

	private final List<RepositoryProxyPostProcessor> postProcessors = new ArrayList<RepositoryProxyPostProcessor>();
	private ClassLoader classLoader = org.springframework.util.ClassUtils
			.getDefaultClassLoader();

	public MyJpaRepositoryFactory(EntityManager entityManager) {
		super(entityManager);
	}

	@Override
	public <T> T getRepository(Class<T> modelClass) {
		return getRepository(modelClass, null);
	}

	@SuppressWarnings({ "unchecked" })
	@Override
	public <T> T getRepository(Class<T> repositoryInterface,
			Object customImplementation) {

		RepositoryMetadata metadata = getRepositoryMetadata(repositoryInterface);
		Class<?> customImplementationClass = null == customImplementation ? null
				: customImplementation.getClass();
		RepositoryInformation information = getRepositoryInformation(metadata,
				customImplementationClass);

		// validate(information, customImplementation);

		Object target = getTargetRepository(information);

		// Create proxy
		ProxyFactory result = new ProxyFactory();
		result.setTarget(target);
		result.setInterfaces(new Class[] { repositoryInterface,
				Repository.class });

		for (RepositoryProxyPostProcessor processor : postProcessors) {
			processor.postProcess(result);
		}

		result.addAdvice(new QueryExecutorMethodInterceptor(information,
				customImplementation, target));

		return (T) result.getProxy(classLoader);
	}

	RepositoryMetadata getRepositoryMetadata(Class<?> repositoryInterface) {
		// TODO
		return Repository.class.isAssignableFrom(repositoryInterface) ? new DefaultRepositoryMetadata(
				repositoryInterface) : new AnnotationRepositoryMetadata(
				repositoryInterface);
	}

	@Override
	public void addRepositoryProxyPostProcessor(
			RepositoryProxyPostProcessor processor) {
		Assert.notNull(processor);
		this.postProcessors.add(processor);
	}

	@Override
	public void setBeanClassLoader(ClassLoader classLoader) {
		this.classLoader = classLoader == null ? org.springframework.util.ClassUtils
				.getDefaultClassLoader() : classLoader;
	}

	// @Override
	// @SuppressWarnings({ "unchecked" })
	// public <T> T getRepository(Class<T> repositoryInterface,
	// Object customImplementation) {
	//
	// RepositoryMetadata metadata = getRepositoryMetadata(repositoryInterface);
	// Class<?> customImplementationClass = null == customImplementation ? null
	// : customImplementation.getClass();
	// RepositoryInformation information = getRepositoryInformation(metadata,
	// customImplementationClass);
	//
	// validate(information, customImplementation);
	//
	// Object target = getTargetRepository(information);
	//
	// // Create proxy
	// ProxyFactory result = new ProxyFactory();
	// result.setTarget(target);
	// result.setInterfaces(new Class[] { repositoryInterface,
	// Repository.class });
	//
	// for (RepositoryProxyPostProcessor processor : postProcessors) {
	// processor.postProcess(result);
	// }
	//
	// result.addAdvice(new QueryExecutorMethodInterceptor(information,
	// customImplementation, target));
	//
	// return (T) result.getProxy(classLoader);
	// }

}
