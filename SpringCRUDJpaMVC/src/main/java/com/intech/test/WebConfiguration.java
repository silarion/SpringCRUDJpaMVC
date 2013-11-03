package com.intech.test;

import java.lang.reflect.ParameterizedType;

import javax.persistence.EntityManagerFactory;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.ConstructorArgumentValues;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanDefinitionRegistryPostProcessor;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.support.GenericBeanDefinition;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.GenericTypeResolver;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.hateoas.config.EnableEntityLinks;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan
@EnableWebMvc
@EnableSpringDataWebSupport
@EnableEntityLinks
// @Import(ControllersDefinitions.class)
public class WebConfiguration implements BeanDefinitionRegistryPostProcessor,
		ApplicationContextAware {

	private EntityManagerFactory emf;

	@Override
	public void postProcessBeanFactory(
			ConfigurableListableBeanFactory beanFactory) throws BeansException {
		// TODO Auto-generated method stub

	}

	@SuppressWarnings("rawtypes")
	@Override
	public void postProcessBeanDefinitionRegistry(BeanDefinitionRegistry reg)
			throws BeansException {
		try {
			DefaultListableBeanFactory registry = (DefaultListableBeanFactory) reg;

			// creation controller pour chaque Entity s'il n'existe pas
			Metamodel model = emf.getMetamodel();
			for (EntityType type : model.getEntities()) {
				Class modelClass = type.getBindableJavaType();

				if (!hasController(modelClass, registry)) {
					// definition du Controller
					GenericBeanDefinition newDef = new GenericBeanDefinition();
					newDef.setBeanClass(CRUDController.class);
					ConstructorArgumentValues constructorArgumentValues = new ConstructorArgumentValues();
					constructorArgumentValues
							.addGenericArgumentValue(modelClass);
					newDef.setConstructorArgumentValues(constructorArgumentValues);

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
							.toLowerCase() + "Controller", newDef);
					System.out.println("Creation Controller " + modelClass);
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.emf = applicationContext.getParent().getBean(
				EntityManagerFactory.class);
	}

	private boolean hasController(Class modelClass,
			DefaultListableBeanFactory registry) throws ClassNotFoundException {
		for (String s : registry.getBeanDefinitionNames()) {
			// System.out.println(s);
			BeanDefinition def = registry.getBeanDefinition(s);
			String className = def.getBeanClassName();
			if (className != null) {
				// System.out.println(className);

				Class c = Class.forName(className);
				if (CRUDController.class.isAssignableFrom(c)
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
