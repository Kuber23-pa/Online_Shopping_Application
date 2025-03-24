package servletPrograms;

import java.io.IOException;
import java.util.ArrayList;

import beans.ProductBean;
import dAO.DeleteProductDAO;
import dAO.UpdateAndDeleteDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/payment")
public class Payment extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired..<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}
		else
		{
			String code=req.getParameter("pcode");
			int reqqty=Integer.parseInt(req.getParameter("reqqty"));
			@SuppressWarnings("unchecked")
			ArrayList<ProductBean> al=(ArrayList<ProductBean>)hs.getAttribute("al");
			for(ProductBean pb:al)
			{
				if(pb.getCode().equals(code))
				{
					
					if(pb.getQty()>=reqqty)
					{
						if((pb.getQty()-reqqty)==0)
						{
							int k=new DeleteProductDAO().delete(code);
							if(k>0)
							{
								req.setAttribute("msg","payment successfull...<br>");
							}
						}
						else
						{
							int k=new UpdateAndDeleteDAO().UpdateStack(pb, reqqty);
							if(k>0)
							{
								req.setAttribute("msg","payment successfull...<br>");
							}
							
						}
					}
					else
					{
						req.setAttribute("msg","Outoff stock...<br>");
					}
					break;
				}
			}
			
			
			
			
			
			req.getRequestDispatcher("Payment.jsp").forward(req, res);
		}
		
	}

}