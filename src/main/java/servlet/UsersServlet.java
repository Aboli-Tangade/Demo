package servlet;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlet.Service.UserService;
import servlet.entity.User;

public class UsersServlet extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		UserService service =new UserService();
		
		ArrayList<User> users = service.getAllUser();
		
		
		if(users.isEmpty()) {
			
			req.setAttribute("msg", "Users Are Not Found In Database");
			req.getRequestDispatcher("users.jsp").forward(req, resp);

		}else {
			
			req.setAttribute("users", users);
			
			req.getRequestDispatcher("users.jsp").forward(req, resp);
		}
		
		
		
	}
	
}
