package dao;

import java.util.List;
import bean.displayBean;

public interface searchDao {
 
	//��ʱ�䷶Χ��վ��Ų�ѯʵʱ���ݼ���Ӧ��ԭʼ�����е�16������
	public List<displayBean> searchDataByTimeRangeAndID(displayBean displayBean);
	

}
