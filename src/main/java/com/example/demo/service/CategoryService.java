package com.example.demo.service;

import org.springframework.http.ResponseEntity;

import com.example.demo.model.Categories;
import com.example.demo.service.dto.CategoryDto;

public interface CategoryService {

	Categories addCategory(CategoryDto categoryDto);

	ResponseEntity<?> getCategory();

	Categories deleteCategory(String id);

	ResponseEntity<?> getCategoryByid(String id);

	void editCategory(CategoryDto categoryDto);

}
