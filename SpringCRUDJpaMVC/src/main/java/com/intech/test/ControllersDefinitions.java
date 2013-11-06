package com.intech.test;

import java.lang.reflect.ParameterizedType;

import javax.persistence.EntityManagerFactory;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.AbstractBeanDefinition;
import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.context.annotation.ImportBeanDefinitionRegistrar;
import org.springframework.core.GenericTypeResolver;
import org.springframework.core.type.AnnotationMetadata;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;

public class ControllersDefinitions implements ImportBeanDefinitionRegistrar {

	@SuppressWarnings("rawtypes")
	@Override
	public void registerBeanDefinitions(
			AnnotationMetadata importingClassMetadata,
			BeanDefinitionRegistry reg) {

		DefaultListableBeanFactory registry = (DefaultListableBeanFactory) reg;
		EntityManagerFactory emf = registry.getParentBeanFactory().getBean(
				EntityManagerFactory.class);

		// entityManager
		BeanDefinitionBuilder builder = BeanDefinitionBuilder
				.rootBeanDefinition("org.springframework.orm.jpa.SharedEntityManagerCreator");
		builder.setFactoryMethod("createSharedEntityManager");
		builder.addConstructorArgReference("entityManagerFactory");
		AbstractBeanDefinition emfDef = builder.getRawBeanDefinition();
		// bean.setSource(source);

		// repoFactory
		builder = BeanDefinitionBuilder
				.rootBeanDefinition(JpaRepositoryFactory.class);
		builder.addConstructorArgValue(emfDef);
		registry.registerBeanDefinition("repositoryFactory",
				builder.getBeanDefinition());

		// creation controller pour chaque Entity s'il n'existe pas
		Metamodel model = emf.getMetamodel();
		for (EntityType type : model.getEntities()) {
			Class modelClass = type.getBindableJavaType();

			if (!hasController(modelClass, registry)) {
				// definition du repository
				// GenericBeanDefinition repoDef = new GenericBeanDefinition();
				// repoDef.setFactoryBeanName("repositoryFactory");
				// repoDef.setFactoryMethodName("getRepository");
				// ConstructorArgumentValues constructorArgumentValues = new
				// ConstructorArgumentValues();
				// constructorArgumentValues
				// .addGenericArgumentValue(JpaRepository.class);
				// repoDef.setConstructorArgumentValues(constructorArgumentValues);
				// registry.registerBeanDefinition(modelClass.getSimpleName()
				// .toLowerCase() + "Repository", repoDef);

				// definition du Controller
				builder = BeanDefinitionBuilder
						.rootBeanDefinition(CRUDController.class);
				builder.addConstructorArgValue(modelClass);
				// builder.addPropertyValue("repository", value);

				// ajout definition du Jparepository
				// RepositoryBeanDefinitionBuilder rbdb = new
				// RepositoryBeanDefinitionBuilder(
				// configuration, new JpaRepositoryConfigExtension());

				// GenericBeanDefinition repoDef = new
				// GenericBeanDefinition();
				// repoDef.setBeanClass(JpaRepositoryFactoryBean.class);
				// MutablePropertyValues propertyValues = new
				// MutablePropertyValues();
				// propertyValues.add("repository", repoDef);
				// newDef.setPropertyValues(propertyValues);

				registry.registerBeanDefinition(modelClass.getSimpleName()
						.toLowerCase() + "Controller",
						builder.getBeanDefinition());
				System.out.println("Creation Controller " + modelClass);
			}

		}

	}

	@SuppressWarnings("rawtypes")
	private boolean hasController(Class modelClass,
			DefaultListableBeanFactory registry) {
		for (String s : registry.getBeanDefinitionNames()) {
			// System.out.println(s);
			BeanDefinition def = registry.getBeanDefinition(s);
			String className = def.getBeanClassName();
			if (className != null) {
				// System.out.println(className);

				Class c = null;
				try {
					c = Class.forName(className);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				if (c != null
						&& CRUDController.class.isAssignableFrom(c)
						&& c.getGenericSuperclass() instanceof ParameterizedType
						&& ((ParameterizedType) c.getGenericSuperclass())
								.getRawType() == CRUDController.class) {
					Class c2 = GenericTypeResolver.resolveTypeArguments(c,
							CRUDController.class)[0];
					if (modelClass == c2) {
						System.out.println("Controller deja present pour "
								+ modelClass);
						return true;
					}
				}
			}

		}
		return false;
	}

}
