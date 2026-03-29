package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlet.Service.UserService;
import servlet.entity.User;

public class LoginServlet extends HttpServlet {
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		
		UserService service=new UserService();
		
		User user = service.loginUser(email, password);
		
		if(user !=null) {
			
			req.setAttribute("email", user.getEmail());
			
			req.getRequestDispatcher("profile.jsp").forward(req, resp);
		}
		else {
			
			req.setAttribute("msg", "Invalid Email Or Password");
			
			req.getRequestDispatcher("login.jsp").include(req, resp);

			
		}
		
		
		
		
		
		
		
	}

}
