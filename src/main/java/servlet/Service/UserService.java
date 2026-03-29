package servlet.Service;

import java.util.ArrayList;

import servlet.Dao.UserDao;
import servlet.entity.User;

public class UserService {
	
	
	UserDao dao=new UserDao();
	
	
	public String registerUser(User user) {
		
		return dao.registerUser(user);
		
	}
	
	
	public User loginUser(String email,String password) {
		
		User loginUser = dao.loginUser(email, password);
		
		return loginUser;
		
	}
	
	
	
public ArrayList<User> getAllUser() {
		
		 ArrayList<User> allUsers = dao.getAllUsers();
		
		return allUsers;
		
	}

}
