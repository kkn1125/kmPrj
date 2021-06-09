package com.toyPrj.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.toyPrj.web.entity.vo.User;
import com.toyPrj.web.service.user.UserService;

@Controller
@RequestMapping("/secu/")
public class SecuController 
{
	private static final Logger logger = LoggerFactory.getLogger(SecuController.class);
	
	@Autowired
	UserService service;
	
	@RequestMapping("login")
	public String login(String email, Model model, HttpSession session, HttpServletRequest request)
	{
		String des = "secu.login";
		if(email!=null) {
			System.out.println(email);
			User u = service.findByEmail(email);
			if(u!=null) {
				System.out.println(u.getId());
				System.out.println("아이디 찾기 완료");
				session = request.getSession();
				session.setAttribute("sessionId", u.getId());
				des = "root.index";
			}
			model.addAttribute("user", u);
		}
		logger.info("로그인");
		return des;
	}
	
}
