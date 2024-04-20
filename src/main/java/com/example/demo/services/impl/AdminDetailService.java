package com.example.demo.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.model.AdminLogin;
import com.example.demo.repositry.LoginAdminRepositry;
import com.example.demo.services.util.AdminPrincipal;

@Service
public class AdminDetailService implements UserDetailsService {
	
	@Autowired
	private LoginAdminRepositry adminRepositry;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		
		AdminLogin adminLogin = adminRepositry.findByEmail(username);
		
		
		AdminPrincipal adminPrincipal = new AdminPrincipal(adminLogin);
		return adminPrincipal;
	}
	
	

}
