package com.toyPrj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.toyPrj.web.service.user.UserService;

@Controller
@RequestMapping("/")
public class HomeController 
{
	@Autowired
	UserService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("index")
	public String index()
	{
		logger.info("메인 홈");
		return "root.index";
	}
	
}
