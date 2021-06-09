package com.toyPrj.web.entity.dao.user;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.toyPrj.web.entity.vo.User;

@Repository
public class UserDAO implements IUserDAO
{
	@Autowired
	DataSource dataSource;
	
	private Connection con = null;
	private PreparedStatement st = null;
	private ResultSet rs = null;
	
	@Override
	public boolean insert(User user) {
		System.out.println("insert() run...");
		
		List<User> userList = new ArrayList<User>();
		String sql = "";
		
		try
		{
			sql = "SELECT * FROM user WHERE num = ?";
			con = dataSource.getConnection();
			st = con.prepareStatement(sql);
			st.setInt(1, user.getNum());
			rs = st.executeQuery();
			if(!rs.next())
			{
				sql = "INSERT INTO user (id, pw, name, gender, birth, address, zip, email, profileImg, comment) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				st = con.prepareStatement(sql);
				st.setString(1, user.getId());
				st.setString(2, user.getPw());
				st.setString(3, user.getName());
				st.setBoolean(4, user.isGender());
				st.setDate(5, user.getBirth());
				st.setString(6, user.getAddress());
				st.setInt(7, user.getZip());
				st.setString(8, user.getEmail());
				st.setString(9, user.getProfileImg());
				st.setString(10, user.getComment());
			}
		}
		catch (SQLException e)
		{
			System.out.println("insert() Error : " + e);
		}
		finally
		{
			try
			{
				if(rs != null) rs.close();
				if(st != null) st.close();
				if(con != null) con.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public boolean update(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int num) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User select(String items, String text, String pageNum) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
