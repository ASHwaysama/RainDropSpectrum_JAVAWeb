package calc;

public class calc {
	
	public int[][] getlongdata(String longdata){
		  int[][] DVData;             //����һ��2ά����
		  DVData=new int[32][32];     //Ϊ������ռ��С
		  int t=0;    //�ַ��Ӵ�λ��	
		  int vdin;   //����¼������ı���
		  for(int v=0;v<=31;v++){               //�ٶ�ѭ��
				 
				for(int d=0;d<=31;d++){          //ֱ��ѭ��
					String vd=longdata.substring(t,t+2);    //ȡ�Ӵ������Ϊ��λʮ��������
					t=t+2;
					vdin=Integer.parseInt(vd, 16);          //תΪʮ��������
					DVData[v][d]=vdin;                      //�ŵ���ά������
				}
			}
		
		return DVData;	
	}


	
}
