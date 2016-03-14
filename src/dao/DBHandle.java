package dao;
import java.sql.*;
import java.util.*;


public class DBHandle {
	private Connection conn=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
    public int getRowCount(String sql){
		int pageCount=0;
		try{
			conn=new DBconn().getConn();
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()){
				pageCount=rs.getInt(1);
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			this.close();
		}
		return pageCount;
	}
	
	
	public ArrayList<String> getAttribute(String sql){
		ArrayList<String> att=new ArrayList<String>();
		try{
			conn=new DBconn().getConn();
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				att.add(rs.getString(1));
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			this.close();
		}
		return att;
	}
	public int getID(String sql){
		int ID=1;
		try{
			conn=new DBconn().getConn();
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()){
				ID=rs.getInt(1);
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			
		}
		return ID;
	}
	public double getDouble(String sql){
		double d=1;
		try{
			conn=new DBconn().getConn();
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()){
				d=rs.getDouble(1);
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			
		}
		return d;
	}
	public String getDVData(String sql){
		String DVData="";
		ResultSet rst=null;
		try{
			conn=new DBconn().getConn();
			ps=conn.prepareStatement(sql);
			rst=ps.executeQuery();
			if(rst.next()){
				DVData=rst.getString(1);
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			try{
				if(rst!=null){
					rst.close();
					rst=null;
				}if(ps!=null){
					ps.close();
					ps=null;
				}if(conn!=null){
					conn.close();
					conn=null;
				}
			}catch(Exception ex){
				ex.printStackTrace();
			}
		}
		return DVData;
	}
	public boolean Update(String sql){
		boolean b=false;
		try{
			conn=new DBconn().getConn();
			ps=conn.prepareStatement(sql);
			int rs=ps.executeUpdate();
			if(rs!=0){
				b=true;
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			this.close();
		}
		return b;
	}
	public void close(){
		try{
			if(rs!=null){
				rs.close();
				rs=null;
			}if(ps!=null){
				ps.close();
				ps=null;
			}if(conn!=null){
				conn.close();
				conn=null;
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
	}
}
