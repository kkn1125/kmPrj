package com.toyPrj.web.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.toyPrj.web.entity.dao.user.UserDAO;
import com.toyPrj.web.entity.vo.User;

@Service
public class UserService implements IUserService
{
	@Autowired
	UserDAO dao;
}
