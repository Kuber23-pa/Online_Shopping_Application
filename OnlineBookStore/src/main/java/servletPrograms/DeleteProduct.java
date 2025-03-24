package servletPrograms;

import java.io.IOException;

import dAO.DeleteProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/deleteproduct")
public class DeleteProduct extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession ht = req.getSession(false);
		if(ht==null)
		{
			req.setAttribute("msg","Session Expired...<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}
		else
		{
			
			String code=req.getParameter("pcode");
			int k=new DeleteProductDAO().delete(code);
			if(k>0)
			{
				req.setAttribute("msg","Product Successfully Deleted...<br>");
				req.getRequestDispatcher("Delete.jsp").forward(req, res);
			}
			
			
		}
		
	}

}
