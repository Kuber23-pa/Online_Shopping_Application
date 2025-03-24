package servletPrograms;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import beans.ProductBean;
import dAO.UpdateProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/updateProduct55")
public class UpdateProduct extends HttpServlet 
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired..<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}
		else
		{
			String code = req.getParameter("pcode");
			@SuppressWarnings("unchecked")
			ArrayList<ProductBean> al=(ArrayList<ProductBean>)hs.getAttribute("al");
			Iterator<ProductBean> it = al.iterator();
			while(it.hasNext())
			{
				ProductBean pb=(ProductBean)it.next();
				if(pb.getCode().equals(code))
				{
					pb.setPrice(Float.parseFloat(req.getParameter("price")));
					pb.setQty(Integer.parseInt(req.getParameter("qty")));
					int k=new UpdateProductDAO().update(pb);
					if(k>0)
					{
						req.setAttribute("msg","Product Updated Successfully...<br>");
						req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
					}
					
				}
			}
			
		}
		
	}
		
	

}
