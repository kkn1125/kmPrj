package com.toyPrj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/secu/")
public class SecuController 
{
	private static final Logger logger = LoggerFactory.getLogger(SecuController.class);
	
	@RequestMapping("login")
	public String login()
	{
		logger.info("로그인");
		return "secu.login";
	}
	
}
