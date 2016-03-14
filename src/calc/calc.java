package calc;

public class calc {
	
	public int[][] getlongdata(String longdata){
		  int[][] DVData;             //定义一个2维数组
		  DVData=new int[32][32];     //为它分配空间大小
		  int t=0;    //字符子串位置	
		  int vdin;   //定义录入数组的变量
		  for(int v=0;v<=31;v++){               //速度循环
				 
				for(int d=0;d<=31;d++){          //直径循环
					String vd=longdata.substring(t,t+2);    //取子串，结果为二位十六进制数
					t=t+2;
					vdin=Integer.parseInt(vd, 16);          //转为十进制整型
					DVData[v][d]=vdin;                      //放到二维数组里
				}
			}
		
		return DVData;	
	}


	
}
