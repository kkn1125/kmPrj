package com.toyPrj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.toyPrj.web.entity.dao.user.UserDAO;
import com.toyPrj.web.service.user.UserService;

@Controller
@RequestMapping("/secu/")
public class SecuController 
{
	private static final Logger logger = LoggerFactory.getLogger(SecuController.class);
	
	@Autowired
	UserService service;
	
	@RequestMapping("login")
	public String login(String id)
	{
		logger.info("로그인");
		return "secu.login";
	}
	
}
