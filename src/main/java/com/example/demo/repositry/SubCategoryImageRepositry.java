package com.example.demo.repositry;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.SubCategoryImages;

@Repository
public interface SubCategoryImageRepositry extends MongoRepository<SubCategoryImages, String> {

	List<SubCategoryImages> findAllBySubCategoryId(String id);
	
	

}
