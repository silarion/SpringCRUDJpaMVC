package com.intech.test;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.context.annotation.ImportBeanDefinitionRegistrar;
import org.springframework.core.type.AnnotationMetadata;

public class ControllersDefinitions implements ImportBeanDefinitionRegistrar {

	@PersistenceContext
	private EntityManager em;

	@Override
	public void registerBeanDefinitions(
			AnnotationMetadata importingClassMetadata,
			BeanDefinitionRegistry registry) {
		try {
			// affichage de tous les beans
			System.out.println("**********************************");
			System.out.println("**** registry.getBeanDefinitionNames() ****");
			for (String s : registry.getBeanDefinitionNames()) {
				System.out.println(s);
			}
			System.out.println("**********************************");

			// creation controller pour chaque Entity
			Metamodel model = em.getMetamodel();
			for (EntityType type : model.getEntities()) {
				Class modelClass = type.getBindableJavaType();

				for (String beanName : registry.getBeanDefinitionNames()) {
					BeanDefinition def = registry.getBeanDefinition(beanName);

				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
