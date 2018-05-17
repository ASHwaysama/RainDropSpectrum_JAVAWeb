<%@page import="calc.calc"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,dao.*,bean.*,java.sql.*,java.math.BigDecimal"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查询结果</title>
</head>
<body>
<a href="index.jsp" style="color:red; font-size:30px;">返回重选</a>
<p>您要查询的站点ID是<p>
<%= request.getParameter("ID")%>

<p>您要查询的起始时间是<p>
<%= request.getParameter("Start")%>
<%Timestamp Start = Timestamp.valueOf(request.getParameter("Start")); %>

<p>您要查询的终止时间是<p>
<%= request.getParameter("End")%>
<%Timestamp End = Timestamp.valueOf(request.getParameter("End")); %>
<br>
 <%
 
     Connection conn = null;
	 conn=new DBconn().getConn();
     Statement statReal = null;
     Statement statSpectrum = null;
     ResultSet rsReal = null;
     ResultSet rsSpectrum = null;
     statReal = conn.createStatement();
     statSpectrum = conn.createStatement();
     String Realsql = "select Sta_WeatherCode,Sta_MORSee,Sta_KineticEnergy from RealData where Sta_ID = "+request.getParameter("ID")+" and Sta_TimeIn > '"+Start+"' and Sta_TimeIn < '"+End+"'";
     String Spectrumsql = "select Sta_ID,Sta_TimeIn,Sta_DVData from SpectrumData where Sta_ID = "+request.getParameter("ID")+" and Sta_TimeIn > '"+Start+"' and Sta_TimeIn < '"+End+"'";
     rsReal = statReal.executeQuery(Realsql);
     rsSpectrum = statSpectrum.executeQuery(Spectrumsql); 
     
  %> 


<table width="1060" cellSpacing=0 height="12" style="font-size:10pt;border: 1pt">
      <tr style="border:solid 1pt">
          <td style="border:solid 1pt">站号</td>
          <td style="border:solid 1pt">时间</td>
          <td style="border:solid 1pt">总粒子数</td>
          <td style="border:solid 1pt">总粒子数浓度</td>
          <td style="border:solid 1pt">谱宽</td>
          <td style="border:solid 1pt">本次降水量</td>
          <td style="border:solid 1pt">雨强</td>
          <td style="border:solid 1pt">平均直径</td>
          <td style="border:solid 1pt">均方根直径</td>
          <td style="border:solid 1pt">均立方根直径</td>
          <td style="border:solid 1pt">液态含水量</td>
          <td style="border:solid 1pt">雷达反射率因子</td>
          <td style="border:solid 1pt">天气代码</td>
          <td style="border:solid 1pt">雨中消光能见度</td>
          <td style="border:solid 1pt">动能</td>
          <td style="border:solid 1pt">N1</td>
          <td style="border:solid 1pt">N2</td>
          <td style="border:solid 1pt">N3</td>
          <td style="border:solid 1pt">N4</td>
          <td style="border:solid 1pt">N5</td>
          <td style="border:solid 1pt">N6</td>
          <td style="border:solid 1pt">N7</td>
          <td style="border:solid 1pt">N8</td>
          <td style="border:solid 1pt">N9</td>
          <td style="border:solid 1pt">N10</td>
          <td style="border:solid 1pt">N11</td>
          <td style="border:solid 1pt">N12</td>
          <td style="border:solid 1pt">N13</td>
          <td style="border:solid 1pt">N14</td>
          <td style="border:solid 1pt">N15</td>
          <td style="border:solid 1pt">N16</td>
          <td style="border:solid 1pt">N17</td>
          <td style="border:solid 1pt">N18</td>
          <td style="border:solid 1pt">N19</td>
          <td style="border:solid 1pt">N20</td>
          <td style="border:solid 1pt">N21</td>
          <td style="border:solid 1pt">N22</td>
          <td style="border:solid 1pt">N23</td>
          <td style="border:solid 1pt">N24</td>
          <td style="border:solid 1pt">N25</td>
          <td style="border:solid 1pt">N26</td>
          <td style="border:solid 1pt">N27</td>
          <td style="border:solid 1pt">N28</td>
          <td style="border:solid 1pt">N29</td>
          <td style="border:solid 1pt">N30</td>
          <td style="border:solid 1pt">N31</td>
          <td style="border:solid 1pt">N32</td>
          <td style="border:solid 1pt">NN1</td>
          <td style="border:solid 1pt">NN2</td>
          <td style="border:solid 1pt">NN3</td>
          <td style="border:solid 1pt">NN4</td>
          <td style="border:solid 1pt">NN5</td>
          <td style="border:solid 1pt">NN6</td>
          <td style="border:solid 1pt">NN7</td>
          <td style="border:solid 1pt">NN8</td>
          <td style="border:solid 1pt">NN9</td>
          <td style="border:solid 1pt">NN10</td>
          <td style="border:solid 1pt">NN11</td>
          <td style="border:solid 1pt">NN12</td>
          <td style="border:solid 1pt">NN13</td>
          <td style="border:solid 1pt">NN14</td>
          <td style="border:solid 1pt">NN15</td>
          <td style="border:solid 1pt">NN16</td>
          <td style="border:solid 1pt">NN17</td>
          <td style="border:solid 1pt">NN18</td>
          <td style="border:solid 1pt">NN19</td>
          <td style="border:solid 1pt">NN20</td>
          <td style="border:solid 1pt">NN21</td>
          <td style="border:solid 1pt">NN22</td>
          <td style="border:solid 1pt">NN23</td>
          <td style="border:solid 1pt">NN24</td>
          <td style="border:solid 1pt">NN25</td>
          <td style="border:solid 1pt">NN26</td>
          <td style="border:solid 1pt">NN27</td>
          <td style="border:solid 1pt">NN28</td>
          <td style="border:solid 1pt">NN29</td>
          <td style="border:solid 1pt">NN30</td>
          <td style="border:solid 1pt">NN31</td>
          <td style="border:solid 1pt">NN32</td>
          
     </tr>
  <%

  
  
      while(rsSpectrum.next()&rsReal.next())
         {
    	 
    	  String longdata=rsSpectrum.getString("Sta_DVData");  
    	  int[][] DVData=new calc().getlongdata(longdata);;   
    	  double I;             
    	  int []NK=new int[32];   //存储各档粒子数（按直径分） 
    	  int []NV=new int[32];   //存储各档粒子数（按速度分） 
    	  double Pi=3.1415926;
          double []NNK=new double[32];  //存储格挡粒子数浓度（按直径分）
    	  double []DD={0.0625,0.1875,0.3125,0.4375,0.5625,0.6875,
    				0.8125,0.9375,1.0625,1.1875,1.375,1.625,1.875,2.125,2.375,2.750,
    				3.250,3.750,4.250,4.750,5.500,6.500,7.500,8.500,9.500,11.000,13.000,
    				15.000,17.000,19.000,21.500,24.500};     //定义直径分档
    	  double []DV={0.050,0.150,0.250,0.350,0.450,0.550,0.650,
    				0.750,0.850,0.950,1.100,1.300,1.500,1.700,1.900,2.200,2.600,3.000,
    				3.400,3.800,4.400,5.200,6.000,6.800,7.600,8.800,10.400,12.000,13.600,
    				15.200,17.600,20.800};   //定义速度分档
    		int N0=0;double NN0=0; //初始化总粒子数和总粒子数浓度
    		double R=0;   //初始化 本次降水量
    		double D1=0,D2=0,D3=0,D1temp=0,D2temp=0,D3temp=0;//初始化平均直径、均方根直径、均立方根直径及其在循环中的局部变量
    		double LQ=0,Z=0,E=0,LQtemp=0,Ztemp=0,Etemp=0; //初始化液态水含量、雷达反射率因子、本次雨滴动能及其在循环中的局部变量
    		double Dmax=0; //初始化谱宽
    	
    		if(longdata.indexOf("1")==-1&&longdata.indexOf("2")==-1&&longdata.indexOf("3")==-1&&longdata.indexOf("4")==-1&&longdata.indexOf("5")==-1&&longdata.indexOf("6")==-1
    				&&longdata.indexOf("7")==-1&&longdata.indexOf("8")==-1&&longdata.indexOf("9")==-1&&longdata.indexOf("A")==-1&&longdata.indexOf("B")==-1&&longdata.indexOf("C")==-1
    				&&longdata.indexOf("D")==-1&&longdata.indexOf("E")==-1&&longdata.indexOf("F")==-1){continue;}
    		
    		
    		
    		else{
    		
    		for(int m=0;m<32;m++){    //列循环
    			NK[m]=0;NNK[m]=0;
    			for(int n=0;n<32;n++){   //行循环
    			NK[m]=NK[m]+DVData[n][m];            //各档粒子数（按直径分）
    			NNK[m]=NNK[m]+DVData[n][m]/(54*Math.pow(10, -4)*DV[n]*60);            //各档粒子浓度（按直径分）
    			BigDecimal NNK_bg = new BigDecimal(NNK[m]);
        		NNK[m] = NNK_bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();    //各档数浓度保留2位小数
    			}		
    			if (m>=20)  //凡是大于5mm的粒子都删去
    			{NK[m]=0;
    			NNK[m]=0;}
    			N0=N0+NK[m];          //计算总粒子数
    			NN0=NN0+NNK[m];        //计算总粒子数浓度
    			R=R+((NK[m]*Math.pow(DD[m], 3)*Pi*Math.pow(10, -6))/(6*54*Math.pow(10, -4)));  //计算降水量
    			D1temp=D1temp+NK[m]*DD[m];                     
    			D2temp=D2temp+NK[m]*Math.pow(DD[m],2);
    			D3temp=D3temp+NK[m]*Math.pow(DD[m],3);
    			LQtemp=LQtemp+(NNK[m]*Math.pow(DD[m], 3));
    			Ztemp=Ztemp+(NNK[m]*Math.pow(DD[m],6));
    			Etemp=Etemp+(NK[m]*Math.pow(DV[m],2)*Math.pow(DD[m],3));
    		}
    		for(int m=0;m<32;m++){    //行循环
    			NV[m]=0;
    			for(int n=0;n<32;n++){   //列循环
    			NV[m]=NV[m]+DVData[m][n];            //各档粒子数（按速度分）
    		
    			}		
    			if (m>=20)  //凡是大于5mm的粒子都删去
    			{NV[m]=0;
    			}
    			
    			
    		}
    		I=R*60;    //计算雨强  
    		D1=D1temp/N0;
    		D2=Math.pow(D2temp/N0, 0.5);
    		D3=Math.pow(D3temp/N0, 1.0/3);
    		LQ=(LQtemp*Pi*Math.pow(10,-3))/6;        //计算液态含水量
    		Z=10*Math.log10(Ztemp);                                //计算雷达反射率因子
    		E=((Etemp)*Pi*Math.pow(10,-6))/12;                  //计算本次雨滴动能
    		
    		for(int i=31;i>=0;i--){                              //确定谱宽
    			boolean flag = false;  //初始化布尔数为假
    			for(int j=31;j>=0;j--){
    			    if(DVData[j][i]!=0&DD[i]<=5)  {	     //遍历二维数组，找到第一个不为0的值，并跳出循环，注意谱宽不能大于5mm	    	
    			    Dmax=DD[i];
    			    flag = true;break;}
    			    	}              
    			   
    			  if(flag == true)
    	              break;
    		      }
    		
    		BigDecimal NN0_bg = new BigDecimal(NN0);
    		NN0 = NN0_bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();    //总粒子数浓度保留2位小数
    		BigDecimal R_bg = new BigDecimal(R);
    		R = R_bg.setScale(5, BigDecimal.ROUND_HALF_UP).doubleValue();    //降水量保留5位小数
    		BigDecimal I_bg = new BigDecimal(I);
    		I = I_bg.setScale(3, BigDecimal.ROUND_HALF_UP).doubleValue();    //雨强保留3位小数
    		BigDecimal D1_bg = new BigDecimal(D1);
    		D1 = D1_bg.setScale(4, BigDecimal.ROUND_HALF_UP).doubleValue();    //平均直径保留4位小数
    		BigDecimal D2_bg = new BigDecimal(D2);
    		D2 = D2_bg.setScale(4, BigDecimal.ROUND_HALF_UP).doubleValue();    //均方根直径保留4位小数
    		BigDecimal D3_bg = new BigDecimal(D3);
    		D3 = D3_bg.setScale(4, BigDecimal.ROUND_HALF_UP).doubleValue();    //均立方根直径保留4位小数
    		BigDecimal LQ_bg = new BigDecimal(LQ);
    		LQ = LQ_bg.setScale(4, BigDecimal.ROUND_HALF_UP).doubleValue();    //液态含水量保留4位小数
    		BigDecimal Z_bg = new BigDecimal(Z);
    		Z = Z_bg.setScale(4, BigDecimal.ROUND_HALF_UP).doubleValue();    //雷达反射率因子保留4位小数
    		BigDecimal E_bg = new BigDecimal(E);
    		E = E_bg.setScale(10, BigDecimal.ROUND_HALF_UP).doubleValue();    //雨滴总动能保留10位小数
    		
    		}
    	  
    	  
             out.print("<tr style='border:solid 1pt'>");
             out.print("<td style='border:solid 1pt'>"+rsSpectrum.getString("Sta_ID")+"</td>");
             out.print("<td style='border:solid 1pt'>"+rsSpectrum.getString("Sta_TimeIn")+"</td>");
             out.print("<td style='border:solid 1pt'>"+N0+"</td>");
             out.print("<td style='border:solid 1pt'>"+NN0+"</td>");
             out.print("<td style='border:solid 1pt'>"+Dmax+"</td>");
             out.print("<td style='border:solid 1pt'>"+R+"</td>");
             out.print("<td style='border:solid 1pt'>"+I+"</td>");
             out.print("<td style='border:solid 1pt'>"+D1+"</td>");
             out.print("<td style='border:solid 1pt'>"+D2+"</td>");
             out.print("<td style='border:solid 1pt'>"+D3+"</td>");
             out.print("<td style='border:solid 1pt'>"+LQ+"</td>");
             out.print("<td style='border:solid 1pt'>"+Z+"</td>");
             out.print("<td style='border:solid 1pt'>"+rsReal.getString("Sta_WeatherCode")+"</td>");
             out.print("<td style='border:solid 1pt'>"+rsReal.getString("Sta_MORSee")+"</td>");
             out.print("<td style='border:solid 1pt'>"+rsReal.getString("Sta_KineticEnergy")+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[0]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[1]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[2]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[3]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[4]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[5]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[6]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[7]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[8]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[9]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[10]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[11]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[12]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[13]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[14]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[15]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[16]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[17]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[18]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[19]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[20]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[21]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[22]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[23]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[24]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[25]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[26]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[27]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[28]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[29]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[30]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NK[31]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[0]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[1]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[2]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[3]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[4]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[5]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[6]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[7]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[8]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[9]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[10]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[11]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[12]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[13]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[14]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[15]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[16]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[17]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[18]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[19]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[20]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[21]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[22]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[23]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[24]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[25]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[26]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[27]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[28]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[29]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[30]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNK[31]+"</td>");
            
             
    	  }
 
         
 		 if(rsReal != null)
 		 {
 		    rsReal.close();
 		 }
		 if(statReal!=null)
 		 {
 			statReal.close();
 		 }
         if(rsSpectrum != null)
         {
             rsSpectrum.close();
         }
         if(statSpectrum!=null)
         {
             statSpectrum.close();
         }
         if(conn!=null)
         {
             conn.close();
         } 
   %>
   </table>
   
   
</body>
</html>