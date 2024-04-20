package com.example.demo.repositry;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Subcategories;

@Repository
public interface SubCategoryRepositry extends MongoRepository<Subcategories, String> {

	List<Subcategories> findAllBycategoryId(String categoryId);

}
