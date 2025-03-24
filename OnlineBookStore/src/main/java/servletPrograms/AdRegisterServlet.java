package servletPrograms;

import java.io.IOException;

//import beans.CustomerBean;
import beans.UserBean;
import dAO.RegisterAdminDAO;
//import dAO.RegisterCustomerDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

	@SuppressWarnings("serial")
	@WebServlet("/reg1")
	public class AdRegisterServlet extends HttpServlet
	{
//		public Register() {
//			System.out.println("AdRegisterServlet.Register.Register()");
//		}
		@Override
		protected void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
		{
			System.out.println("reg1");
			HttpSession hs=req.getSession();
			if(hs==null)
			{
				req.setAttribute("msg","Session Expired...<br>");
				req.getRequestDispatcher("Home.jsp").forward(req, res);
			}
			else
			{
			String un = req.getParameter("us");
			String ps = req.getParameter("pa");
			String fn = req.getParameter("fn");
			String ln = req.getParameter("ln");
			String mid = req.getParameter("mid");
			Long phno=Long.parseLong(req.getParameter("phno"));
			UserBean cb =new UserBean();
			cb.setUserName(un);
			cb.setPassWord(ps);
			cb.setFirstName(fn);
			cb.setLastName(ln);
			cb.setEmail(mid);
			cb.setMobile(phno);
			int k=new RegisterAdminDAO().insert(cb);
			if(k>0)
			{
				req.setAttribute("msg","Register Succefull...<br>");
				req.getRequestDispatcher("RegisterSuccess.jsp").forward(req, res);
			}
			
			}
		}

	}
