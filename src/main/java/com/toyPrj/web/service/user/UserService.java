package com.toyPrj.web.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.toyPrj.web.entity.dao.user.UserDAO;

@Service
public class UserService implements IUserService
{
	@Autowired
	UserDAO dao;
}
