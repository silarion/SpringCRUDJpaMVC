package com.intech.test;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class SpringWebAppInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext container) throws ServletException {
		System.out
				.println("************************************ Startup via SpringWebAppInitializer");
		AnnotationConfigWebApplicationContext appContext = new AnnotationConfigWebApplicationContext();
		appContext.addApplicationListener(new ApplicationListener());
		appContext.register(JpaConfiguration.class);
		appContext.refresh();

		AnnotationConfigWebApplicationContext webContext = new AnnotationConfigWebApplicationContext();
		webContext.setParent(appContext);
		// webContext.addBeanFactoryPostProcessor(appContext
		// .getBean(ControllersDefinitions.class));
		webContext.register(WebConfiguration.class);

		ServletRegistration.Dynamic dispatcher = container.addServlet(
				"SpringDispatcher", new DispatcherServlet(webContext));
		dispatcher.setLoadOnStartup(1);
		dispatcher.addMapping("/");

	}

}