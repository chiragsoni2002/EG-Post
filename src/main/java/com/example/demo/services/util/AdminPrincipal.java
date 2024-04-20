package com.example.demo.services.util;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.demo.model.AdminLogin;

public class AdminPrincipal implements UserDetails {
	
	private static final long serialVersionUID = 1L;
	private final AdminLogin adminLogin;
	
	public AdminPrincipal(AdminLogin adminLogin) {
		
		super();
		this.adminLogin = adminLogin;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return adminLogin.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return adminLogin.getEmail();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
