package com.intech.test;

import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.core.GenericTypeResolver;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

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
			System.out.println(s);
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
			} else {
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
	}

}
