package dAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.CustomerBean;
import dbInfo.DBConnection;

public class RegisterCustomerDAO
{
	public int insert(CustomerBean cb)
	{
		int k=0;
		try {
//			USERNAME                                  NOT NULL VARCHAR2(20)
//			 PASSWORD                                           VARCHAR2(20)
//			 FNAME                                              VARCHAR2(20)
//			 LNAME                                              VARCHAR2(20)
//			 GMAIL                                              VARCHAR2(45)
//			 PHNO                                               NUMBER(15)
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into CUSTOMER55 values(?,?,?,?,?,?)");
			ps.setString(1, cb.getUserName());
			ps.setString(2, cb.getPassWord());
			ps.setString(3, cb.getFirstName());
			ps.setString(4, cb.getLastName());
			ps.setString(5, cb.getEmail());
			ps.setLong(6, cb.getMobile());
			k=ps.executeUpdate();
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return k;
	}

}

