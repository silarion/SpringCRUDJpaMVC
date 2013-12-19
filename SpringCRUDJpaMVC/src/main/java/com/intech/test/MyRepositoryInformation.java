package com.intech.test;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.core.CrudMethods;
import org.springframework.data.repository.core.RepositoryInformation;
import org.springframework.data.repository.core.RepositoryMetadata;

public class MyRepositoryInformation extends MyRepositoryMetadata implements
		RepositoryInformation {

	public MyRepositoryInformation(Class<?> repositoryInterface) {
		super(repositoryInterface);
	}

	public MyRepositoryInformation(RepositoryMetadata metadata,
			Class<?> repositoryBaseClass, Class<?> customImplementationClass) {
		super(metadata.getRepositoryInterface());
	}

	@Override
	public Class<?> getRepositoryBaseClass() {
		return JpaRepository.class;
	}

	@Override
	public boolean hasCustomMethod() {
		return false;
	}

	@Override
	public boolean isCustomMethod(Method method) {
		return false;
	}

	@Override
	public boolean isQueryMethod(Method method) {
		return false;
	}

	@Override
	public boolean isBaseClassMethod(Method method) {
		return false;
	}

	@Override
	public Iterable<Method> getQueryMethods() {
		Set<Method> result = new HashSet<Method>();

		// for (Method method : getRepositoryInterface().getMethods()) {
		// method = ClassUtils.getMostSpecificMethod(method,
		// getRepositoryInterface());
		// if (!isCustomMethod(method) && !isBaseClassMethod(method)) {
		// result.add(method);
		// }
		// }

		return Collections.unmodifiableSet(result);
	}

	@Override
	public CrudMethods getCrudMethods() {
		return null;
	}

	@Override
	public Method getTargetClassMethod(Method method) {
		for (Method baseClassMethod : getRepositoryBaseClass().getMethods()) {

			if (method.getName().equals(baseClassMethod.getName())) {
				if (method.getParameterTypes() == null
						&& baseClassMethod.getParameterTypes() == null) {
					return baseClassMethod;
				} else if ((method.getParameterTypes() == null && baseClassMethod
						.getParameterTypes() != null)
						|| (method.getParameterTypes() != null && baseClassMethod
								.getParameterTypes() == null)) {
					continue;
				} else if (method.getParameterTypes().length == baseClassMethod
						.getParameterTypes().length) {
					boolean ok = true;
					int i = 0;
					for (Class<?> type : method.getParameterTypes()) {
						if (!type
								.equals(baseClassMethod.getParameterTypes()[i++])) {
							ok = false;
						}
					}
					if (ok) {
						return baseClassMethod;
					}
				}

			}

			// // Wrong name
			// if (!method.getName().equals(baseClassMethod.getName())) {
			// continue;
			// }
			//
			// // Wrong number of arguments
			// if (!(method.getParameterTypes().length ==
			// baseClassMethod.getParameterTypes().length)) {
			// continue;
			// }
			//
			// // Check whether all parameters match
			// if (!parametersMatch(method, baseClassMethod)) {
			// continue;
			// }

			// return baseClassMethod;
		}
		return null;
	}
	// private boolean parametersMatch(Method method, Method baseClassMethod) {
	//
	// Type[] genericTypes = baseClassMethod.getGenericParameterTypes();
	// Class<?>[] types = baseClassMethod.getParameterTypes();
	//
	// for (int i = 0; i < genericTypes.length; i++) {
	//
	// Type type = genericTypes[i];
	// MethodParameter parameter = new MethodParameter(method, i);
	// Class<?> parameterType = resolveParameterType(parameter,
	// metadata.getRepositoryInterface());
	//
	// if (type instanceof TypeVariable<?>) {
	// if (!matchesGenericType((TypeVariable<?>) type, parameterType)) {
	// return false;
	// }
	// } else {
	// if (!types[i].equals(parameterType)) {
	// return false;
	// }
	// }
	// }
	//
	// return true;
	// }
	//
	// private boolean matchesGenericType(TypeVariable<?> variable, Class<?>
	// parameterType) {
	//
	// Class<?> entityType = getDomainType();
	// Class<?> idClass = getIdType();
	//
	// if (ID_TYPE_NAME.equals(variable.getName()) &&
	// parameterType.isAssignableFrom(idClass)) {
	// return true;
	// }
	//
	// Type boundType = variable.getBounds()[0];
	// String referenceName = boundType instanceof TypeVariable ?
	// boundType.toString() : variable.toString();
	//
	// if (DOMAIN_TYPE_NAME.equals(referenceName) &&
	// parameterType.isAssignableFrom(entityType)) {
	// return true;
	// }
	//
	// return false;
	// }

}
