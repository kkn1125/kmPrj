package com.toyPrj.web.service.user;

import java.util.HashMap;
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
	
	@Override
	public User findById(String email) {
		
		return null;
	}

	@Override
	public User findByEmail(String email) {
		System.out.println("findByEmail");
		List<User> list = dao.select("num", "", 0);
		System.out.println(list.size());
		for(User u : list) {
			if(u.getEmail().equals(email)) {
				System.out.println("조회성공");
				return u;
			}
		}
		return null;
	}

	@Override
	public boolean isMember(String id, String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(int num) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
