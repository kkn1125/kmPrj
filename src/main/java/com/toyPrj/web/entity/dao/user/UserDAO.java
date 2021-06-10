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
				sql = "INSERT INTO user (id, pw, email, name, phone, carrier, birth, address, zip) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
				st = con.prepareStatement(sql);
				st.setString(1, user.getId());
				st.setString(2, user.getPw());
				st.setString(3, user.getEmail());
				st.setString(4, user.getName());
				st.setString(5, user.getPhone());
				st.setString(6, user.getCarrier());
				st.setDate(7, user.getBirth());
				st.setString(8, user.getAddress());
				st.setInt(9, user.getZip());
				
				st.executeUpdate();
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
				sql = "UPDATE user set id=?, pw=?, email=?, name=?, phone=?, carrier=?, birth=?, address=?, zip=? WHERE num=?";
				st = con.prepareStatement(sql);
				st.setString(1, user.getId());
				st.setString(2, user.getPw());
				st.setString(3, user.getEmail());
				st.setString(4, user.getName());
				st.setString(5, user.getPhone());
				st.setString(6, user.getCarrier());
				st.setDate(7, user.getBirth());
				st.setString(8, user.getAddress());
				st.setInt(9, user.getZip());
				
				st.executeUpdate();
			}
		}
		catch (SQLException e)
		{
			System.out.println("update() Error : " + e);
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
	public boolean delete(int num) {
		
		String sql = "";
		
		try
		{
			sql = "DELETE * FROM user WHERE num = ?";
			con = dataSource.getConnection();
			st = con.prepareStatement(sql);
			st.setInt(1, num);
			st.executeUpdate();
			
		}
		catch (SQLException e)
		{
			System.out.println("delete() Error : " + e);
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
	public List<User> select(String items, String text, int pageNum) {
		System.out.println("select() run...");
		
		List<User> userList = new ArrayList<User>();
		String sql = "";
		
		int limit = 10;
		int start = (pageNum - 1) * limit;
		
		String limitsql = " LIMIT "+ start + ", " + limit;
		
		try
		{
			sql = "SELECT * FROM user WHERE " + items + " LIKE '%" + text + "%' ORDER BY num DESC" + limitsql;
			con = dataSource.getConnection();
			st = con.prepareStatement(sql);
			rs = st.executeQuery();
			while(rs.next())
			{
				User u = new User();
				u.setNum(rs.getInt("num"));
				u.setId(rs.getString("id"));
				u.setPw(rs.getString("pw"));
				u.setEmail(rs.getString("email"));
				u.setName(rs.getString("name"));
				u.setPhone(rs.getString("phone"));
				u.setCarrier(rs.getString("carrier"));
				u.setBirth(rs.getDate("birth"));
				u.setGender(rs.getBoolean("gender"));
				u.setAddress(rs.getString("address"));
				u.setZip(rs.getInt("zip"));
				u.setProfileImg(rs.getString("profileImg"));
				u.setComment(rs.getString("comment"));
				u.setRegDate(rs.getDate("regDate"));
				u.setUpdates(rs.getDate("updates"));
				userList.add(u);
			}
		}
		catch (SQLException e)
		{
			System.out.println("select() Error : " + e);
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
		return userList;
	}
	
}
