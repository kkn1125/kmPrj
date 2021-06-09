package com.toyPrj.web.entity.dao.user;

import com.toyPrj.web.entity.vo.User;

public interface IUserDAO
{
	public boolean insert(User user);
	public boolean update(User user);
	public boolean delete(int num);
	public User select(String items, String text, String pageNum);
}
