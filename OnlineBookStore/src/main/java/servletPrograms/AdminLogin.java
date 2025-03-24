package servletPrograms;

import java.io.IOException;

import beans.UserBean;
import dAO.UserDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/admin123")
	@SuppressWarnings("serial")
	public class AdminLogin extends HttpServlet
	{
		@Override
		protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
		{
			UserBean ub=new UserDAO().userValid(req.getParameter("uname"), req.getParameter("pword"));
			if(ub==null)
			{
				req.setAttribute("msg","UserName/PassWord is wrong");
				RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
				rd.forward(req, res);
			
			}
			
			else
			{
				HttpSession ht = req.getSession();
				ht.setAttribute("ubean",ub);
				req.setAttribute("msg","welcome user :");
				RequestDispatcher rd = req.getRequestDispatcher("AdminLoginSuccess.jsp");
				rd.forward(req, res);
			}
			
		}

}
