package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.demo.services.impl.AdminDetailService;

@SuppressWarnings("deprecation")
@EnableWebSecurity
@Configuration
public class SpringWebSecurity extends WebSecurityConfigurerAdapter {
	
	
	@Bean
	public UserDetailsService getUserDetailsService() {
		return new AdminDetailService();
	}
	 
	
	 @Bean
	 public BCryptPasswordEncoder bCryptPasswordEncoder() {
		   return new BCryptPasswordEncoder();
	}
	 
	 @Bean
	    public DaoAuthenticationProvider authenticationProvider() {
	    	DaoAuthenticationProvider authenticationProvider =new DaoAuthenticationProvider();
	    	authenticationProvider.setUserDetailsService(getUserDetailsService());
	    	authenticationProvider.setPasswordEncoder(bCryptPasswordEncoder());
			return authenticationProvider;
	    }
	  @Bean
	    @Override
	    public AuthenticationManager authenticationManagerBean() throws Exception {
	        return super.authenticationManagerBean();
	    }

	    @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	        auth.authenticationProvider(authenticationProvider());
	    }

	
	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		
		httpSecurity
			.csrf()
			.disable()
			.authorizeRequests()
			.antMatchers("/admin/login").permitAll()
			.antMatchers("/admin/dashboard", 
						
					"/admin/user",
					"/admin/category",
					"/admin/add-category",
					"/admin/getcategory",
					"/admin/getcategory1/{id}",
					"/admin/deletecategory/{id}",
					"/admin/category={id}/subcategory",
					"/admin/add-subcategory",
					"/admin/get-subcategory/{categoryId}",
					"/admin/deleteSubCategoryId/{id}",
					"/admin/subcategoryImages",
					"/admin/getsubCategoryImages/{id}").authenticated()
			.and()
			.formLogin().loginPage("/admin/login");
		
	}

}
