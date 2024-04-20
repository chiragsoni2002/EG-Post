package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.example.demo.model.Subcategories;
import com.example.demo.repositry.SubCategoryRepositry;
import com.example.demo.service.SubCategoryService;
import com.example.demo.service.dto.SubCategoryDto;
import com.example.demo.services.util.GenricResponse;

@Service
public class SubCategoryImpl implements SubCategoryService {

	@Autowired
	private SubCategoryRepositry subcategoryRepositry;
	
	@Override
	public void addSubCategory(SubCategoryDto subCategoryDto) {
		// TODO Auto-generated method stub
		
		Subcategories subcategories  = new Subcategories();
		BeanUtils.copyProperties(subCategoryDto, subcategories);
		
		subcategoryRepositry.save(subcategories);
		
	}

	@Override
	public ResponseEntity<?> getSubCategory(String categoryId) {
		// TODO Auto-generated method stub
		
		List<Subcategories> subcategories =subcategoryRepositry.findAllBycategoryId(categoryId);
		
		return ResponseEntity.ok(new GenricResponse(201, "Success", subcategories));
		
	}

	@Override
	public void deleteSubCategory(String id) {
		// TODO Auto-generated method stub
		
		subcategoryRepositry.deleteById(id);
		
	}

	@Override
	public void editSubCategory(SubCategoryDto subCategoryDto) {
		// TODO Auto-generated method stub
		
		Subcategories subcategories = new Subcategories();
		BeanUtils.copyProperties(subCategoryDto, subcategories);
		
		subcategoryRepositry.save(subcategories);
	}

}
