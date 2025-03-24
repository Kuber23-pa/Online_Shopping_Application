package dAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.ProductBean;
import dbInfo.DBConnection;

public class FetchingProductDAO {

	public ArrayList<ProductBean> view()
	{
		ArrayList<ProductBean> al=new ArrayList<>();
		try 
		{
			Connection con=DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM product55");
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				ProductBean pb =new ProductBean();
				pb.setCode(rs.getString(1));
				pb.setName(rs.getString(2));
				pb.setPrice(rs.getFloat(3));
				pb.setQty(rs.getInt(4));
				al.add(pb);
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}


}
