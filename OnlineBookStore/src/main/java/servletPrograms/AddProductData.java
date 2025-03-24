package servletPrograms;

import java.io.IOException;

import beans.ProductBean;
import dAO.AddProductDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
	@SuppressWarnings("serial")
	@WebServlet("/addproduct")
	public class AddProductData extends HttpServlet
	{

		@Override
		public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
		{
			HttpSession hs=req.getSession(false);
			if(hs==null)
			{
				req.setAttribute("msg","Session Expired...<br>");
				req.getRequestDispatcher("Home.jsp").forward(req, res);
			}
			else
			{
				String code = req.getParameter("code");
				String name = req.getParameter("name");
		    	float price = Float.parseFloat(req.getParameter("price"));
				int qty =Integer.parseInt(req.getParameter("qty"));
				ProductBean pb=new ProductBean();
				pb.setCode(code);
				pb.setName(name);
				pb.setPrice(price);
				pb.setQty(qty);
				int k = new AddProductDAO().insert(pb);
				if(k>0)
				{
					req.setAttribute("msg","Product Successfully Added...<br>");
					RequestDispatcher rd=req.getRequestDispatcher("Addproduct.jsp");
					rd.include(req, res);
				}
		  }
		}

}
