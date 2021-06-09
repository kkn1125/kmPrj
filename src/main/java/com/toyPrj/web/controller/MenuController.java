package com.toyPrj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu/")
public class MenuController 
{
	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);
	
	@RequestMapping("chat")
	public String chat()
	{
		logger.info("채팅목록");
		return "menu.chat";
	}
	
	@RequestMapping("chattingRoom")
	public String chattingRoom()
	{
		logger.info("채팅방");
		return "menu.chattingRoom";
	}
	
	@RequestMapping("settings")
	public String settings()
	{
		logger.info("세팅");
		return "menu.settings";
	}
	
}
