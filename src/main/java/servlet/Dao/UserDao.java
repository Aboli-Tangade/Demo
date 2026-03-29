package servlet.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import servlet.entity.User;
import servlet.util.JDBCConnection;

public class UserDao {
	
	
	Connection con=JDBCConnection.createConnection();
	
	
	
	public String registerUser(User user) {
		
		
		try {
			PreparedStatement pst = con.prepareStatement("insert into skillswap values(?,?,?,?,?)");
			
              	pst.setString(1,user.getName());
              	pst.setString(2,user.getEmail());
              	pst.setString(3, user.getPassword());
              	pst.setString(4,user.getSkill());
              	pst.setString(5,user.getDescription());
              	
              	pst.execute();
              	
              	

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return "User Register Successfully";
		
	}

	
	
	
	
	
	
	public User loginUser(String email ,String password) {
		
		User user=null;

		try {
			
			PreparedStatement pst = con.prepareStatement("Select * from skillswap where email=? and password=?");

			
			pst.setString(1,email);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			
			
			while(rs.next()) {
				
			String email1=rs.getString("email");
			String password1=rs.getString("password");
			
			 user=new User(email1,password1);
				
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
		
	}
	
	
	
	public ArrayList<User> getAllUsers() {
		
		ArrayList<User> users=new ArrayList<>();
		
		try {
			PreparedStatement pst = con.prepareStatement("select * from skillswap ");
			
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				
				String name=rs.getString("name");
				String email=rs.getString("email");
				String password=rs.getString("password");
				String skill=rs.getString("skill");
				String description=rs.getString("description");
				
				
				User user=new User(name,email,password,skill,description);
				
				users.add(user);
				
				
			}
			
			
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		return users;
		
	}
}
