package dao;

import java.util.List;
import bean.displayBean;

public interface searchDao {
 
	//按时间范围、站点号查询实时数据及对应的原始数据中的16进制数
	public List<displayBean> searchDataByTimeRangeAndID(displayBean displayBean);
	

}
