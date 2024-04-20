package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.example.demo.model.Categories;
import com.example.demo.repositry.CategoryRepositry;
import com.example.demo.service.CategoryService;
import com.example.demo.service.dto.CategoryDto;
import com.example.demo.services.util.GenricResponse;


@Service
public class CategoryImpl implements CategoryService {
	
	@Autowired
	private CategoryRepositry categoryRepositry;

	@Override
	public Categories addCategory(CategoryDto categoryDto) {
		// TODO Auto-generated method stub
		
		Categories categories = new Categories();
		
		BeanUtils.copyProperties(categoryDto, categories);
		
		categoryRepositry.save(categories);
		
		return categories;
	}

	@Override
	public ResponseEntity<?> getCategory() {
		// TODO Auto-generated method stub
		
		List<Categories> categories = categoryRepositry.findAll();
		return ResponseEntity.ok(new GenricResponse(201, "success", categories));
	}

	@Override
	public Categories deleteCategory(String id) {
		// TODO Auto-generated method stub
		
		categoryRepositry.deleteById(id);
		
		System.out.println("khbchb");
		
		return null;
	}
	

	@Override
	public ResponseEntity<?> getCategoryByid(String id) {
		// TODO Auto-generated method stub
		
		Categories categories = categoryRepositry.findById(id).get();
		return ResponseEntity.ok(new GenricResponse(201, "Success", categories));
	}

	@Override
	public void editCategory(CategoryDto categoryDto) {
		// TODO Auto-generated method stub
		
		Categories categories = new Categories();
		BeanUtils.copyProperties(categoryDto, categories);
			categoryRepositry.save(categories);

		
	}
}
