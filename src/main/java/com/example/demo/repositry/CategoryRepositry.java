package com.example.demo.repositry;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Categories;

@Repository
public interface CategoryRepositry extends MongoRepository<Categories, String> {

}
