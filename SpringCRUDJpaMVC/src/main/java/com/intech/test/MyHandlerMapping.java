package com.intech.test;

import java.lang.reflect.Method;

import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.mvc.condition.PatternsRequestCondition;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

@Component
public class MyHandlerMapping extends RequestMappingHandlerMapping {

	@Override
	protected boolean isHandler(Class<?> beanType) {
		return CRUDController.class.isAssignableFrom(beanType)
				&& AnnotationUtils.findAnnotation(beanType, Controller.class) == null;
	}

	@Override
	protected RequestMappingInfo getMappingForMethod(Method method,
			Class<?> handlerType) {
		RequestMappingInfo info = super
				.getMappingForMethod(method, handlerType);

		//

		return info;
	}

	@Override
	protected void registerHandlerMethod(Object handler, Method method,
			RequestMappingInfo mapping) {

		CRUDController ctrl = (CRUDController) getApplicationContext().getBean(
				(String) handler, CRUDController.class);
		Class domainClass = ctrl.getDomainClass();

		PatternsRequestCondition newPattern = new PatternsRequestCondition(
				domainClass.getSimpleName().toLowerCase()).combine(mapping
				.getPatternsCondition());

		mapping = new RequestMappingInfo(newPattern,
				mapping.getMethodsCondition(), mapping.getParamsCondition(),
				mapping.getHeadersCondition(), mapping.getConsumesCondition(),
				mapping.getProducesCondition(), mapping.getCustomCondition());

		// new RequestMappingInfo(
		// new PatternsRequestCondition(patterns, getUrlPathHelper(),
		// getPathMatcher(),
		// this.useSuffixPatternMatch, this.useTrailingSlashMatch,
		// this.fileExtensions),
		// new RequestMethodsRequestCondition(annotation.method()),
		// new ParamsRequestCondition(annotation.params()),
		// new HeadersRequestCondition(annotation.headers()),
		// new ConsumesRequestCondition(annotation.consumes(),
		// annotation.headers()),
		// new ProducesRequestCondition(annotation.produces(),
		// annotation.headers(), getContentNegotiationManager()),
		// customCondition)

		super.registerHandlerMethod(handler, method, mapping);
	}

}
