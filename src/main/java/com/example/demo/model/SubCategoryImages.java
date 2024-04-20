package com.example.demo.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class SubCategoryImages {
	
	private String id;
	private String subCategoryId;
	private String imageName;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(String subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	
	

}
