package servletPrograms;

import java.io.IOException;
import java.util.ArrayList;

import beans.ProductBean;
import dAO.FetchingProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/viewProducts")
public class ViewAllProducts extends HttpServlet
{
	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		HttpSession ht=req.getSession(false);
		if(ht==null)
		{
			req.setAttribute("msg","Session Expired..<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}
		else
		{
		   ArrayList<ProductBean> al =new FetchingProductDAO().view();
			ht.setAttribute("al", al);
			req.getRequestDispatcher("ViewProduct.jsp").forward(req, res);
	  }
    }

	
}

