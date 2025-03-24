package dAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import beans.ProductBean;
import dbInfo.DBConnection;

public class ByProductDAO {
	
	private int k=0;
	
	public int purchase(ProductBean ab) {
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update product55 set pqty=? where pcode=?");
			
			ps.setInt(1, ab.getQty());
			ps.setString(2, ab.getCode());
			
			k = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return k;
	}

}