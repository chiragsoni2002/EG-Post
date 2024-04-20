package com.example.demo.service;

import org.springframework.http.ResponseEntity;

import com.example.demo.service.dto.SubCategoryDto;

public interface SubCategoryService {

	void addSubCategory(SubCategoryDto subCategoryDto);

	ResponseEntity<?> getSubCategory(String categoryId);

	void deleteSubCategory(String id);

	void editSubCategory(SubCategoryDto subCategoryDto);

}
