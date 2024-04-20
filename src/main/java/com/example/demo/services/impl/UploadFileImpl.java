package com.example.demo.services.impl;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.service.UploadImageService;


@Service
public class UploadFileImpl implements UploadImageService {

	@Override
	public String uploadImage(String path, MultipartFile file) throws IOException {
		// TODO Auto-generated method stub
		
		String fileName = file.getOriginalFilename();
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("ddMMyyyyHHmmssSSS");
		Date date = new Date();
	    String strDate = sdfDate.format(date);
		
		
	//	String randomId = UUID.randomUUID().toString();
		
		String fileName1 = strDate+fileName.substring(fileName.lastIndexOf("."));
		
		String filePath = path + File.separator + fileName1;
		
		String filePath1 = File.separator + fileName1;
		
		String fi = Paths.get("images").toAbsolutePath().toString()+filePath1;
		
		System.err.println(fi);
		
		File f = new File(path);

		if(!f.exists()) {
			f.mkdir();
		}		
		Files.copy(file.getInputStream() , Paths.get(filePath));
		f.delete();
		
		return fileName1;
	}

	@Override
	public String getFile(String name) {
		// TODO Auto-generated method stub
		
		String fi = Paths.get("images").toAbsolutePath().toString()+name;
		
		System.out.println(fi);
		return fi;
	}

}
