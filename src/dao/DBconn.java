package dao;

import java.sql.*;


public class DBconn {
	private Connection conn=null;
	public Connection getConn(){
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn=DriverManager.getConnection("jdbc:sqlserver://192.168.99.20:1433;DatabaseName=CW_YDPYDB","sa","ryzx_123");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}