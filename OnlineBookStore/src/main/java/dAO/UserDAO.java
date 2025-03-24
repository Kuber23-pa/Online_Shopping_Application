package dAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.UserBean;
import dbInfo.DBConnection;

public class UserDAO 
{
	public UserBean userValid(String userName,String passWord)
	{
		UserBean ub=null;
		try {
			Connection con =DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from Admin55 where UNAME=? and PWORD=?");
			ps.setString(1, userName);
			ps.setString(2, passWord);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				ub=new UserBean();
				ub.setUserName(rs.getString(1));
				ub.setPassWord(rs.getString(2));
				ub.setFirstName(rs.getString(3));
				ub.setLastName(rs.getString(4));
				ub.setEmail(rs.getString(5));
				ub.setMobile(rs.getLong(6));
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(ub);
		return ub;
	}

}