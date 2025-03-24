package dAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbInfo.DBConnection;

public class DeleteProductDAO 
{
	public int delete(String code)
	{
		int k=0;
		try {
			Connection con =DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("Delete from Product55 where pcode=?");
			ps.setString(1, code);
			 k = ps.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return k;
	}

}