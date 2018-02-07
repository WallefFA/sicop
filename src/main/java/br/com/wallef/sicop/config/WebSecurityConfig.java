package br.com.wallef.sicop.config;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
				.csrf().disable().authorizeRequests()
				.antMatchers("/relatorios").hasAnyRole("GERENTE")
				.antMatchers("/atualizaVenda").hasAnyRole("GERENTE")
				.antMatchers("/atualizaVendaFuturo").hasAnyRole("GERENTE")
				.antMatchers("/mostraVenda").hasAnyRole("GERENTE")
				.antMatchers("/mostraVendaFuturo").hasAnyRole("GERENTE")
				.antMatchers("/").hasAnyRole("FUNCIONARIO")
				.anyRequest()
				.authenticated()
			.and()
				.formLogin()
					.loginPage("/entrar")
					.permitAll();
	}

}
