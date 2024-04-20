package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.example.demo.model.SubCategoryImages;
import com.example.demo.model.Subcategories;
import com.example.demo.repositry.SubCategoryImageRepositry;
import com.example.demo.repositry.SubCategoryRepositry;
import com.example.demo.service.SubCategoryImageService;
import com.example.demo.service.UploadImageService;
import com.example.demo.services.util.GenricResponse;


@Service
public class SubCategoryImageImpl implements SubCategoryImageService {
	
	@Autowired
	private SubCategoryImageRepositry categoryImageRepositry;
	
	@Autowired
	private SubCategoryRepositry subcategoryRepositry;
	
	@Autowired
	private UploadImageService imageService;

	@Override
	public String addsubCategoryImage(String categoryId, String fileName) {
		// TODO Auto-generated method stub
		
		SubCategoryImages categoryImages = new SubCategoryImages();
		
		categoryImages.setImageName(fileName);
		categoryImages.setSubCategoryId(categoryId);
		
		Subcategories category = subcategoryRepositry.findById(categoryId).get();
		
		categoryImageRepositry.save(categoryImages);
		
		return category.getCategoryId();
		
	}

	@Override
	public ResponseEntity<?> getSubCategoryImages(String id) {
		// TODO Auto-generated method stub
		
		List<SubCategoryImages> categoryImages = categoryImageRepositry.findAllBySubCategoryId(id);
		
//		categoryImages.forEach(images-> {
//			String imagesName = images.getImageName();
//			String finalName = imageService.getFile(imagesName);
//			
//			images.setImageName(finalName);
//		});
		return ResponseEntity.ok(new GenricResponse(201, "Success", categoryImages));
	}

	@Override
	public ResponseEntity<?> editSubCategory(String id) {
		// TODO Auto-generated method stub
		
		Subcategories subcategories = subcategoryRepositry.findById(id).get();
		return ResponseEntity.ok(new GenricResponse(201, "Success", subcategories));
	}

	@Override
	public String deleteImage(String id) {
		// TODO Auto-generated method stub
		SubCategoryImages categoryImages = categoryImageRepositry.findById(id).get();
		Subcategories subcategories = subcategoryRepositry.findById(categoryImages.getSubCategoryId()).get();
		categoryImageRepositry.deleteById(id);
		System.err.println("ckhabdjhc");
		
		return subcategories.getCategoryId();
	}

}
