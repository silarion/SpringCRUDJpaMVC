package com.intech.test;

import java.lang.reflect.ParameterizedType;

import javax.persistence.EntityManagerFactory;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.ConstructorArgumentValues;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.support.GenericBeanDefinition;
import org.springframework.context.annotation.ImportBeanDefinitionRegistrar;
import org.springframework.core.GenericTypeResolver;
import org.springframework.core.type.AnnotationMetadata;

public class ControllersDefinitions implements ImportBeanDefinitionRegistrar {

	@SuppressWarnings("rawtypes")
	@Override
	public void registerBeanDefinitions(
			AnnotationMetadata importingClassMetadata,
			BeanDefinitionRegistry reg) {

		DefaultListableBeanFactory registry = (DefaultListableBeanFactory) reg;
		EntityManagerFactory emf = registry.getParentBeanFactory().getBean(
				EntityManagerFactory.class);

		// creation controller pour chaque Entity s'il n'existe pas
		Metamodel model = emf.getMetamodel();
		for (EntityType type : model.getEntities()) {
			Class modelClass = type.getBindableJavaType();

			if (!hasController(modelClass, registry)) {
				// definition du Controller
				GenericBeanDefinition newDef = new GenericBeanDefinition();
				newDef.setBeanClass(CRUDController.class);
				ConstructorArgumentValues constructorArgumentValues = new ConstructorArgumentValues();
				constructorArgumentValues.addGenericArgumentValue(modelClass);
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
