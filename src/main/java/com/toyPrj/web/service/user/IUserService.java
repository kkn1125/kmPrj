package com.toyPrj.web.service.user;

import com.toyPrj.web.entity.vo.User;

public interface IUserService
{
	public User findById(String id); // 아이디로 조회
	
	public User findByEmail(String email); // 이메일로 조회
	
	public boolean isMember(String id, String email); // 가입한 유저인지 아닌지 조회 ( 회원가입 시 아이디 중복에 사용 )
	
	public boolean updateUser(User user);
	
	public boolean deleteUser(int num);
}
