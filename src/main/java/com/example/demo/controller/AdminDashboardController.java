package com.example.demo.controller;

import java.io.IOException;

import javax.enterprise.inject.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;

import com.example.demo.model.AdminLogin;
import com.example.demo.model.Categories;
import com.example.demo.repositry.LoginAdminRepositry;
import com.example.demo.service.CategoryService;
import com.example.demo.service.SubCategoryImageService;
import com.example.demo.service.SubCategoryService;
import com.example.demo.service.UploadImageService;
import com.example.demo.service.dto.CategoryDto;
import com.example.demo.service.dto.SubCategoryDto;
import com.example.demo.services.util.AdminPrincipal;

@RestController
@RequestMapping("/admin")
public class AdminDashboardController {
	
	@Value("${project.image}")
	private String path;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private LoginAdminRepositry adminRepositry;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	@Autowired
	private UploadImageService imageService;
	
	@Autowired
	private SubCategoryImageService subCategoryImageService;
	
	@GetMapping("/login")
	public ModelAndView login() {
		
		ModelAndView andView = new ModelAndView();
		andView.setViewName("login");
		return andView;
	}
	
	@PostMapping("/process-login")
	public ModelAndView processLogin(@ModelAttribute("adminData") AdminLogin adminLogin) {
		
		System.err.println(adminLogin.getEmail()+"----------------"+ adminLogin.getPassword());
		
		ModelAndView andView = new ModelAndView();
		
		AdminLogin adminLogin2 = adminRepositry.findByEmail(adminLogin.getEmail());
		
		if(adminLogin2!= null) {
			
			boolean pass = passwordEncoder.matches(adminLogin.getPassword(), adminLogin2.getPassword());
			System.out.println(pass);
			if(pass!=false) {
				final UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(
			              new AdminPrincipal(adminLogin2), adminLogin.getPassword());
				final Authentication authentication = token;
		       	SecurityContextHolder.getContext().setAuthentication(authentication);
		       	
		       	andView.setViewName("/dashboard");
		       	
		       	return andView;
			}
			andView.setViewName("redirect:/admin/login");
			return andView;
		}
       	
       	andView.setViewName("redirect:/admin/login");
		return andView;
	}
	
	@GetMapping("/dashboard")
	public ModelAndView indexPage() {
		
		ModelAndView andView = new ModelAndView();
		andView.setViewName("dashboard");
		return andView;
	}
	
	@GetMapping("/user")
	public ModelAndView userPage() {
		ModelAndView andView = new ModelAndView();
		andView.setViewName("user");
		return andView;
	}
	
	@GetMapping("/category")
	public ModelAndView category() {
		ModelAndView andView = new ModelAndView();
		andView.setViewName("category");
		return andView;
	}
	
	@PostMapping("/add-category")
	public ModelAndView addCategory(@ModelAttribute("addCategoryData") CategoryDto categoryDto) {
		
		
		ModelAndView andView = new ModelAndView();
		
		System.err.println(categoryDto.getStatus()+"------------ "+ categoryDto.getCategoryName());
		
		Categories categories =  categoryService.addCategory(categoryDto);
		
		System.out.println(categories);
		
		andView.setViewName("redirect:/admin/category");
		return andView;
		
	}
	
	@GetMapping("/getcategory")
	
	public ResponseEntity<?> getCategory(){
		
		return categoryService.getCategory();
	}
	
	@GetMapping("/getcategorybyId/{id}")
	public ResponseEntity<?> getCategoAndView(@PathVariable("id") String id) {
	
		
		return categoryService.getCategoryByid(id);
	}
	
	@PostMapping("/editcategory")
	public ModelAndView editCategory(@ModelAttribute("editCategoryData") CategoryDto categoryDto) {
		
		ModelAndView andView = new ModelAndView();
		System.err.println(categoryDto.getId());
		System.err.println(categoryDto.getCategoryName());
		System.err.println(categoryDto.getStatus());
		categoryService.editCategory(categoryDto);
		
		andView.setViewName("redirect:/admin/category");
		return andView;
	}
	
	@PostMapping("/deletecategory/{id}")
	public ModelAndView deleteCategory(@PathVariable("id") String id) {
		
		ModelAndView andView = new ModelAndView();
		
		categoryService.deleteCategory(id);
		
		andView.setViewName("redirect:/admin/category");
		return andView;
		
	}
	
	
	@GetMapping("/category={id}/subcategory")
	public ModelAndView subCategory(@PathVariable("id") String id) {
		
		ModelAndView andView = new ModelAndView();
		
		andView.addObject("categoryId", id);
		andView.setViewName("subcategory");
		return andView;
	}
	
	@PostMapping("/add-subcategory")
	public ModelAndView addSubCategory(@ModelAttribute("addsubCategoryData") SubCategoryDto subCategoryDto) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		subCategoryService.addSubCategory(subCategoryDto);
		
		modelAndView.setViewName("redirect:/admin/category="+ subCategoryDto.getCategoryId()+"/subcategory");
		
		return modelAndView;
	}
	
	@GetMapping("/get-subcategory/{categoryId}")
	public ResponseEntity<?> getSubcategory(@PathVariable("categoryId") String categoryId){
		
		return subCategoryService.getSubCategory(categoryId);
	}
	
	
	@PostMapping("/deleteSubCategoryId/{id}")
	public ModelAndView deleteSubCategory(@PathVariable("id") String id) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		subCategoryService.deleteSubCategory(id);
		
		return modelAndView;
	}
	
	@PostMapping("/subcategoryImages")
	public ModelAndView uploadImages(@RequestParam("subcategoryImages") MultipartFile multipartFile, @RequestParam("categoryId") String categoryId) throws IOException {
		
		ModelAndView andView = new ModelAndView();
		
		String fileName = imageService.uploadImage(path, multipartFile);
		
		String cid = subCategoryImageService.addsubCategoryImage(categoryId, fileName);
		
		System.gc();
		andView.setViewName("redirect:/admin/category="+cid+"/subcategory");
	
		return andView;
		
	}
	
	@GetMapping("/getsubCategoryImages/{id}")
	public ResponseEntity<?> getSubCategoryImages(@PathVariable("id") String id){
		
		return subCategoryImageService.getSubCategoryImages(id);
		
	}
	
	@GetMapping("/editsubcategory/{id}")
	public ResponseEntity<?> editSubCategory(@PathVariable("id") String id){
		
		return subCategoryImageService.editSubCategory(id);
	}

	
	@PostMapping("/editSubCategory")
	public ModelAndView editSubCategory(@ModelAttribute("editSubCategory") SubCategoryDto subCategoryDto) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		subCategoryService.editSubCategory(subCategoryDto);
		
		modelAndView.setViewName("redirect:/admin/category="+ subCategoryDto.getCategoryId()+"/subcategory");
		
		return modelAndView;
		
	}
	
	@PostMapping("/deleteSubCategoryImg/{id}")
	public ModelAndView deleteSubCategoryImg(@PathVariable("id") String id) {
		
		ModelAndView modelAndView = new ModelAndView();
		String categoryId = subCategoryImageService.deleteImage(id);
		System.err.println("category id"+ categoryId);
		modelAndView.setViewName("redirect:/admin/category="+ categoryId+"/subcategory");
	
		return modelAndView;
	}
	
	
	

}