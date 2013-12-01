package com.intech.test;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.ClassPathScanningCandidateComponentProvider;
import org.springframework.core.env.Environment;
import org.springframework.core.env.StandardEnvironment;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.type.AnnotationMetadata;
import org.springframework.core.type.filter.AnnotationTypeFilter;
import org.springframework.core.type.filter.TypeFilter;
import org.springframework.data.repository.config.AnnotationRepositoryConfigurationSource;

public class MyAnnotationRepositoryConfigurationSource extends
		AnnotationRepositoryConfigurationSource {

	private final Environment environment;

	public MyAnnotationRepositoryConfigurationSource(
			AnnotationMetadata metadata,
			Class<? extends Annotation> annotation, Environment environment) {
		super(metadata, annotation, environment);
		this.environment = environment == null ? new StandardEnvironment()
				: environment;
	}

	public Collection<String> getCandidates(ResourceLoader loader) {

		// scan tous les @Entity
		ClassPathScanningCandidateComponentProvider scanner = new ClassPathScanningCandidateComponentProvider(
				false);
		scanner.setEnvironment(environment);
		Iterable<TypeFilter> includeFilters = getIncludeFilters();
		if (includeFilters.iterator().hasNext()) {
			for (TypeFilter filter : includeFilters) {
				scanner.addIncludeFilter(filter);
			}
		}
		scanner.addIncludeFilter(new AnnotationTypeFilter(Entity.class));

		scanner.setResourceLoader(loader);
		scanner.setEnvironment(environment);

		for (TypeFilter filter : getExcludeFilters()) {
			scanner.addExcludeFilter(filter);
		}

		Set<String> result = new HashSet<String>();

		for (String basePackage : getBasePackages()) {
			Collection<BeanDefinition> components = scanner
					.findCandidateComponents(basePackage);
			for (BeanDefinition definition : components) {
				result.add(definition.getBeanClassName());
			}
		}

		return result;
	}

}
