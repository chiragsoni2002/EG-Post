package com.example.demo.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public interface UploadImageService {
	
	
	String uploadImage(String path, MultipartFile file) throws IOException;
	
	String getFile(String name);

}
