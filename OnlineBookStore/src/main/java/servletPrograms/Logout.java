package servletPrograms;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/logout")
public class Logout extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession ht = req.getSession(false);
		if(ht==null)
		{
			req.setAttribute("msg","Session Expired...<br>");
		}
		else
		{
			ht.invalidate();
			req.setAttribute("msg","Logout successfull...<br>");
		}
		RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
		rd.forward(req, res);
	}

}
