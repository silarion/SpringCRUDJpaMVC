package com.intech.test;

import java.util.Map;
import java.util.Map.Entry;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.core.GenericTypeResolver;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

import com.intech.model.Copyright;

public class ApplicationListener implements
		org.springframework.context.ApplicationListener<ContextRefreshedEvent> {

	@PersistenceContext
	private EntityManager em;

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		AnnotationConfigWebApplicationContext ctx = (AnnotationConfigWebApplicationContext) event
				.getApplicationContext();

		// affichage de tous les beans
		System.out.println("**********************************");
		System.out.println("ctx.getBeanDefinitionNames()");
		for (String s : ctx.getBeanDefinitionNames()) {
			BeanDefinition def = ctx.getBeanFactory().getBeanDefinition(s);
			System.out.println(s + "          (" + def + ")");
		}
		System.out.println("**********************************");

		// check si tous les repository ont ete crees
		EntityManagerFactory entityManagerFactory = ctx
				.getBean(EntityManagerFactory.class);

		Metamodel model = entityManagerFactory.getMetamodel();
		for (EntityType type : model.getEntities()) {
			Class modelClass = type.getBindableJavaType();
			// System.out.println(modelClass);

			Map<String, JpaRepository> beans = ctx
					.getBeansOfType(JpaRepository.class);
			boolean hasRepository = false;
			for (Map.Entry<String, JpaRepository> bean : beans.entrySet()) {

				Class[] c = GenericTypeResolver.resolveTypeArguments(bean
						.getValue().getClass(), JpaRepository.class);
				if (modelClass == c[0]) {
					hasRepository = true;
					System.out.println("ok " + modelClass + "("
							+ bean.getValue().getClass() + ")");
					break;
				}

			}

			if (hasRepository) {
				// System.out.println("ok " + modelClass + "(" + + ")");
			} else if (false) {
				// System.out.println("nok " + modelClass);

				// creation du JpaRepository
				JpaRepository repo = new SimpleJpaRepository(modelClass, em);
				// JpaRepositoryFactory factory = new JpaRepositoryFactory(em);
				// JpaRepository repo =
				// factory.getRepository(JpaRepository.class);
				ctx.getBeanFactory()
						.registerSingleton(
								modelClass.getSimpleName().toLowerCase()
										+ "Repository", repo);

				SimpleJpaRepository sjr = ctx.getBean(modelClass
						.getSimpleName().toLowerCase() + "Repository",
						SimpleJpaRepository.class);

				if (sjr != null) {
					System.out.println("Creation "
							+ modelClass.getSimpleName().toLowerCase()
							+ "Repository");
				}

			}

		}
		System.out.println("**********************************");

		// registerGenericControllers(event);
	}

	private void registerGenericControllers(ContextRefreshedEvent event) {
		AnnotationConfigWebApplicationContext ctx = (AnnotationConfigWebApplicationContext) event
				.getApplicationContext();

		EntityManagerFactory entityManagerFactory = ctx
				.getBean(EntityManagerFactory.class);

		System.out.println("**********************************");
		System.out.println("***** Controllers *****");
		for (Entry<String, CRUDController> bean : ctx.getBeansOfType(
				CRUDController.class).entrySet()) {
			System.out.println(bean.getKey());
		}

		ctx.getBeanFactory().registerSingleton("copyrightController",
				new CRUDController(Copyright.class));

		System.out.println("------------------------------------");
		for (Entry<String, CRUDController> bean : ctx.getBeansOfType(
				CRUDController.class).entrySet()) {
			System.out.println(bean.getKey());
		}
		System.out.println("**********************************");
	}

}
