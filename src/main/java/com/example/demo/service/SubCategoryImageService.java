package com.example.demo.service;

import org.springframework.http.ResponseEntity;

public interface SubCategoryImageService {

	String addsubCategoryImage(String categoryId, String fileName);

	ResponseEntity<?> getSubCategoryImages(String id);

	ResponseEntity<?> editSubCategory(String id);

	String deleteImage(String id);

}
