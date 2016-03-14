package dao;

import bean.displayBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class searchDaoImp implements searchDao {
	
	//数据库连接
	private DBUtil db=new DBUtil();
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	@Override
	public List<displayBean> searchDataByTimeRangeAndID(displayBean displayBean) {
		// TODO Auto-generated method stub
		String sql="select Sta_ID,StaTimeIn,Sta_WeatherCode,Sta_SerialNum,Sta_KineticEnergy from RealData where Sta_ID="+displayBean.getSta_ID()+" and Sta_TimeIn between "+displayBean.getSta_TimeStart()+" and "+displayBean.getSta_TimeEnd()+"";
		
		return setdatalist(sql);
	}
	

	private List<displayBean> setdatalist(String sql) {
		// TODO Auto-generated method stub
		List<displayBean> displaylist=new ArrayList<displayBean>();
		
		con=db.getCon();
		try{
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				displayBean displaybean=new displayBean();
				displaybean.setSta_ID(rs.getInt(1));
				displaybean.setSta_TimeIn(rs.getString(2));
				displaybean.setSta_Lon(rs.getString(3));
				displaybean.setSta_Lat(rs.getString(4));
				displaybean.setType(rs.getString(5));
				displaybean.setVisibility(rs.getInt(6));
				displaybean.setPrecipitation(rs.getInt(7));
				displaybean.setIntensity(rs.getInt(8));
				displaybean.setDmax(rs.getInt(9));
				
				displaylist.add(displaybean);
				 
				
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			db.closeAll(con, pstmt, rs);
		}
		return displaylist;
	}


}
