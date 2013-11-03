package com.intech.test;

import java.util.Map.Entry;

import javax.persistence.EntityManager;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanDefinitionRegistryPostProcessor;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;

public class ControllersDefinitions implements
		BeanDefinitionRegistryPostProcessor {

	private EntityManager em;

	public ControllersDefinitions(EntityManager em) {
		this.em = em;
	}

	@Override
	public void postProcessBeanFactory(
			ConfigurableListableBeanFactory beanFactory) throws BeansException {
		// TODO Auto-generated method stub

	}

	@Override
	public void postProcessBeanDefinitionRegistry(BeanDefinitionRegistry reg)
			throws BeansException {
		try {
			DefaultListableBeanFactory registry = (DefaultListableBeanFactory) reg;

			// affichage de tous les beans
			System.out.println("**********************************");
			System.out.println("**** registry.getBeanDefinitionNames() ****");
			for (String s : registry.getBeanDefinitionNames()) {
				System.out.println(s);
			}

			for (Entry<String, CRUDController> bean : registry.getBeansOfType(
					CRUDController.class).entrySet()) {
				System.out.println(bean.getKey());
			}

			System.out.println("**********************************");

			// creation controller pour chaque Entity s'il n'existe pas
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
