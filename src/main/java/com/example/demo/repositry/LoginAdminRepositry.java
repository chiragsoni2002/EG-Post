package com.example.demo.repositry;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.AdminLogin;

@Repository
public interface LoginAdminRepositry extends MongoRepository<AdminLogin, String> {

	AdminLogin findByEmail(String username);

}
