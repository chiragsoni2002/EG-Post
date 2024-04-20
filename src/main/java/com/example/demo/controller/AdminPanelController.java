package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/panchayatpost")
public class AdminPanelController {
	
	@GetMapping("/index")
	public ModelAndView index() {
		
		ModelAndView andView = new ModelAndView();
		andView.setViewName("index");
		return andView;
	}
	

}
