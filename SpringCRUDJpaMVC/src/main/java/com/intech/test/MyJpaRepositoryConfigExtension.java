package com.intech.test;

import org.springframework.data.jpa.repository.config.JpaRepositoryConfigExtension;
import org.springframework.data.repository.config.DefaultRepositoryConfiguration;
import org.springframework.data.repository.config.RepositoryConfiguration;
import org.springframework.data.repository.config.RepositoryConfigurationSource;

public class MyJpaRepositoryConfigExtension extends
		JpaRepositoryConfigExtension {

	@Override
	public String getRepositoryFactoryClassName() {
		return MyJpaRepositoryFactoryBean.class.getName();
	}

	// @Override
	// public <T extends RepositoryConfigurationSource>
	// Collection<RepositoryConfiguration<T>> getRepositoryConfigurations(
	// T configSource, ResourceLoader loader) {
	// return super.getRepositoryConfigurations(configSource, loader);
	// }

	protected <T extends RepositoryConfigurationSource> RepositoryConfiguration<T> getRepositoryConfiguration(
			String interfaceName, T configSource) {
		return new DefaultRepositoryConfiguration<T>(configSource,
				interfaceName);
	}

}
