package com.intech.test;

import java.lang.annotation.Annotation;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.core.GenericTypeResolver;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.type.AnnotationMetadata;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactoryBean;
import org.springframework.data.repository.config.RepositoryBeanDefinitionBuilder;
import org.springframework.data.repository.config.RepositoryBeanDefinitionRegistrarSupport;
import org.springframework.data.repository.config.RepositoryBeanNameGenerator;
import org.springframework.data.repository.config.RepositoryConfiguration;
import org.springframework.data.repository.config.RepositoryConfigurationExtension;
import org.springframework.util.Assert;

public class MyJpaRepositoriesRegistrar extends
		RepositoryBeanDefinitionRegistrarSupport {

	private ResourceLoader resourceLoader;
	private ClassLoader beanClassLoader;
	private Environment environment;

	@Override
	protected Class<? extends Annotation> getAnnotation() {
		return MyEnableJpaRepositories.class;
	}

	@Override
	protected RepositoryConfigurationExtension getExtension() {
		return new MyJpaRepositoryConfigExtension();
	}

	@Override
	public void registerBeanDefinitions(AnnotationMetadata annotationMetadata,
			BeanDefinitionRegistry reg) {

		DefaultListableBeanFactory registry = (DefaultListableBeanFactory) reg;

		Assert.notNull(annotationMetadata);
		Assert.notNull(registry);

		// Guard against calls for sub-classes
		if (annotationMetadata.getAnnotationAttributes(getAnnotation()
				.getName()) == null) {
			return;
		}

		// defaultExternalResources(registry);

		MyAnnotationRepositoryConfigurationSource configuration = new MyAnnotationRepositoryConfigurationSource(
				annotationMetadata, getAnnotation(), environment);

		RepositoryConfigurationExtension extension = getExtension();
		extension.registerBeansForRoot(registry, configuration);

		RepositoryBeanNameGenerator generator = new RepositoryBeanNameGenerator();
		generator.setBeanClassLoader(beanClassLoader);

		for (RepositoryConfiguration<MyAnnotationRepositoryConfigurationSource> repositoryConfiguration : extension
				.getRepositoryConfigurations(configuration, resourceLoader)) {

			// check existance repo
			boolean hasRepository = false;
			try {
				hasRepository = hasRepository(
						Class.forName(repositoryConfiguration
								.getRepositoryInterface()), registry);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}

			if (!hasRepository) {
				RepositoryBeanDefinitionBuilder builder = new RepositoryBeanDefinitionBuilder(
						repositoryConfiguration, extension);
				BeanDefinitionBuilder definitionBuilder = builder.build(
						registry, resourceLoader);

				extension.postProcess(definitionBuilder, configuration);

				String beanName = generator.generateBeanName(
						definitionBuilder.getBeanDefinition(), registry);
				registry.registerBeanDefinition(beanName + "Repository",
						definitionBuilder.getBeanDefinition());
			}
		}
	}

	@SuppressWarnings("rawtypes")
	private boolean hasRepository(Class modelClass,
			DefaultListableBeanFactory registry) {
		for (String s : registry.getBeanDefinitionNames()) {
			// System.out.println(s);
			BeanDefinition def = registry.getBeanDefinition(s);
			String className = def.getBeanClassName();
			if (className != null
					&& className.equals(JpaRepositoryFactoryBean.class
							.getName())) {

				className = (String) def.getPropertyValues()
						.getPropertyValue("repositoryInterface").getValue();
				// System.out.println(className);

				Class c = null;
				try {
					c = Class.forName(className);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				for (Class interf : c.getInterfaces()) {
					if (interf != null
							&& JpaRepository.class.isAssignableFrom(interf)) {
						Class c2 = GenericTypeResolver.resolveTypeArguments(c,
								JpaRepository.class)[0];
						if (modelClass == c2) {
							System.out.println("Repository deja present pour "
									+ modelClass + " : " + s + " (" + c + ")");
							return true;
						}
					}
				}
			}

		}
		return false;
	}

	@Override
	public void setBeanClassLoader(ClassLoader classLoader) {
		this.beanClassLoader = classLoader;
		super.setBeanClassLoader(classLoader);
	}

	@Override
	public void setResourceLoader(ResourceLoader resourceLoader) {
		this.resourceLoader = resourceLoader;
		super.setResourceLoader(resourceLoader);
	}

	@Override
	public void setEnvironment(Environment environment) {
		this.environment = environment;
		super.setEnvironment(environment);
	}

}
