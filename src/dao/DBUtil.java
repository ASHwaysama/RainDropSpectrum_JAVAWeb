package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class DBUtil {
	 private Connection con=null;
	    private PreparedStatement ps=null;
		//静态块自动加载驱动
	    static{
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
	    //获取连接
	    public Connection getCon(){
	    	try {
				con=DriverManager.getConnection("jdbc:sqlserver://192.168.99.20:1433;DatabaseName=CW_YDPYDB","sa","ryzx_123" );
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return con;
	    }
	    //关闭的方法
	    public void closeAll(Connection con,PreparedStatement ps, ResultSet rs){
	    	if(con!=null){
	    		try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	    	}
	    	if(ps!=null){
	    		try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	    	}
	    	if(rs!=null){
	    		try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	    	}
	    			
	    }
	    //表的增删改
	    public int tableUpdate(String sql, List<String> list){//list为变量集合,数据库的增删改
	        con=this.getCon();
	    	int result=-1;
			try {
				ps=con.prepareStatement(sql);
				if(list!=null&&list.size()>0){
					for(int i=0;i<list.size();i++){
						ps.setString(i+1, list.get(i));
					}
				}
				result = ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				this.closeAll(con, ps, null);
			}
			System.out.println(result+" 条记录已更改！");
	    	return result;
	    }
}
