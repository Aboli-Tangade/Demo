package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlet.Service.UserService;
import servlet.entity.User;

public class RegisterServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	String name  = req.getParameter("name");
	String email = req.getParameter("email");
	String password = req.getParameter("password");
	String skill = req.getParameter("skill");
	String description = req.getParameter("description");

	
//	System.out.println(name);
//	System.out.println(email);
//	System.out.println(password);
//	System.out.println(skill);
//	System.out.println(description);


		
		User user=new User(name,email,password,skill,description);
		
		UserService service=new UserService();
		
		
		String msg = service.registerUser(user);
		
		
		req.setAttribute("message", msg);
		req.getRequestDispatcher("Register.jsp").include(req, resp);;
		
		
	}

}
