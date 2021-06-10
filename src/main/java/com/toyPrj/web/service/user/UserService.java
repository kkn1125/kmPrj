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
	public void signUp(User user, int num) { // 회원 가입
		System.out.println("signUp");
		dao.insert(user);
		String strnum = Integer.toString(num);
		List<User> list = dao.select("num", strnum, 0); //LIKE 아닌 정확한 num으로 검색 필요
		System.out.println(list.size());
		for(User u : list) {
			if(u.getNum() == num) { 
				System.out.println("회원가입 성공");
			}
		}
	}
	
	@Override
	public User findById(String id) { // 아이디로 조회
		System.out.println("findById");
		List<User> list = dao.select("id", id, 0);
		System.out.println(list.size());
		for(User u : list) {
			if(u.getId().equals(id)) {
				System.out.println("해당 id 조회 성공");
				return u;
			}
		}
		return null;
	}

	@Override
	public User findByEmail(String email) { // 이메일로 조회
		System.out.println("findByEmail");
		List<User> list = dao.select("email", email, 0);
		System.out.println(list.size());
		for(User u : list) { // foreach문 0, 1, 2, 3, 4...
			if(u.getEmail().equals(email)) {
				System.out.println("조회성공");
				return u;
			}
		}
		return null;
	}

	@Override
	public boolean isMember(String id, String email) { // 가입한 유저인지 아닌지 조회 ( 회원가입 시 아이디 중복에 사용 )
		System.out.println("isMember");
		List<User> list = dao.select("id", id, 0); // id로 매칭
		System.out.println(list.size());
		for(User u : list) {
			if(u.getEmail().equals(email)) {  // id 매칭 중 email로 한 번 더 매칭
				System.out.println("이미 존재하는 id입니다.");
			}
		}
		return false;
	}

	@Override
	public void editAccount(User user) { // 회원 정보 수정
		System.out.println("editAccount");
		dao.update(user);
		System.out.println("회원 정보 수정이 완료되었습니다.");
	}

	@Override
	public void deleteAccount(int num) { // 회원 탈퇴
		System.out.println("deleteAccount");
		dao.delete(num);
		System.out.println("회원 탈퇴가 완료되었습니다.");
	}
	
	
}
