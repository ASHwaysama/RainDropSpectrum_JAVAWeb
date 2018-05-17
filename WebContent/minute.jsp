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

<%--
<a href="index.jsp" style="color:red; font-size:30px;">返回重选</a>
<p>您要查询的站点ID是<p>
<%= request.getParameter("ID")%>

<p>您要查询的起始时间是<p>
<%= request.getParameter("Start")%>

<p>您要查询的终止时间是<p>
<%= request.getParameter("End")%>
<br>
 --%>
 <%  Timestamp Start = Timestamp.valueOf(request.getParameter("Start")); 
     Timestamp End = Timestamp.valueOf(request.getParameter("End")); 
     Connection conn = null;
	 conn=new DBconn().getConn();
     Statement statReal = null;
     Statement statSpectrum = null;
     ResultSet rsReal = null;
     ResultSet rsSpectrum = null;
     statReal = conn.createStatement();
     statSpectrum = conn.createStatement();
     String Realsql = "select Sta_GranuleNums,Sta_RainIntensity,Sta_RainSum,Sta_RadarDBZ,Sta_WeatherCode,Sta_MORSee,Sta_KineticEnergy from RealData where Sta_ID = "+request.getParameter("ID")+" and Sta_TimeIn > '"+Start+"' and Sta_TimeIn < '"+End+"' order by Sta_TimeIn";
     String Spectrumsql = "select Sta_ID,Sta_TimeIn,Sta_DVData from SpectrumData where Sta_ID = "+request.getParameter("ID")+" and Sta_TimeIn > '"+Start+"' and Sta_TimeIn < '"+End+"' order by Sta_TimeIn";
     rsReal = statReal.executeQuery(Realsql);
     rsSpectrum = statSpectrum.executeQuery(Spectrumsql); 
     
  %> 


<table width="1060" cellSpacing=0 height="12" style="font-size:10pt;border: 1pt">
      <tr style="border:solid 1pt">
          <td style="border:solid 1pt">站号</td>
          <td style="border:solid 1pt">时间</td>
          <td style="border:solid 1pt">总粒子数</td>
          <td style="border:solid 1pt">（实时）总粒子数</td>
          <td style="border:solid 1pt">总粒子数浓度</td>
          <td style="border:solid 1pt">谱宽</td>
          <td style="border:solid 1pt">本次降水量</td>
          <td style="border:solid 1pt">（实时）累计降水量</td>
          <td style="border:solid 1pt">自动站分钟降水</td>
          <td style="border:solid 1pt">雨强</td>
          <td style="border:solid 1pt">（实时）雨强</td>
          <td style="border:solid 1pt">平均直径</td>
          <td style="border:solid 1pt">均方根直径</td>
          <td style="border:solid 1pt">均立方根直径</td>
          <td style="border:solid 1pt">液态含水量</td>
          <td style="border:solid 1pt">雷达反射率因子</td>
          <td style="border:solid 1pt">（实时）雷达反射率</td>
          <td style="border:solid 1pt">天气代码</td>
          <td style="border:solid 1pt">（实时）雨中消光能见度</td>
          <td style="border:solid 1pt">（实时）动能</td>
          <td style="border:solid 1pt">ND1</td>
          <td style="border:solid 1pt">ND2</td>
          <td style="border:solid 1pt">ND3</td>
          <td style="border:solid 1pt">ND4</td>
          <td style="border:solid 1pt">ND5</td>
          <td style="border:solid 1pt">ND6</td>
          <td style="border:solid 1pt">ND7</td>
          <td style="border:solid 1pt">ND8</td>
          <td style="border:solid 1pt">ND9</td>
          <td style="border:solid 1pt">ND10</td>
          <td style="border:solid 1pt">ND11</td>
          <td style="border:solid 1pt">ND12</td>
          <td style="border:solid 1pt">ND13</td>
          <td style="border:solid 1pt">ND14</td>
          <td style="border:solid 1pt">ND15</td>
          <td style="border:solid 1pt">ND16</td>
          <td style="border:solid 1pt">ND17</td>
          <td style="border:solid 1pt">ND18</td>
          <td style="border:solid 1pt">ND19</td>
          <td style="border:solid 1pt">ND20</td>
          <td style="border:solid 1pt">ND21</td>
          <td style="border:solid 1pt">ND22</td>
          <td style="border:solid 1pt">ND23</td>
          <td style="border:solid 1pt">ND24</td>
          <td style="border:solid 1pt">ND25</td>
          <td style="border:solid 1pt">ND26</td>
          <td style="border:solid 1pt">ND27</td>
          <td style="border:solid 1pt">ND28</td>
          <td style="border:solid 1pt">ND29</td>
          <td style="border:solid 1pt">ND30</td>
          <td style="border:solid 1pt">ND31</td>
          <td style="border:solid 1pt">ND32</td>
          <td style="border:solid 1pt">NV1</td>
          <td style="border:solid 1pt">NV2</td>
          <td style="border:solid 1pt">NV3</td>
          <td style="border:solid 1pt">NV4</td>
          <td style="border:solid 1pt">NV5</td>
          <td style="border:solid 1pt">NV6</td>
          <td style="border:solid 1pt">NV7</td>
          <td style="border:solid 1pt">NV8</td>
          <td style="border:solid 1pt">NV9</td>
          <td style="border:solid 1pt">NV10</td>
          <td style="border:solid 1pt">NV11</td>
          <td style="border:solid 1pt">NV12</td>
          <td style="border:solid 1pt">NV13</td>
          <td style="border:solid 1pt">NV14</td>
          <td style="border:solid 1pt">NV15</td>
          <td style="border:solid 1pt">NV16</td>
          <td style="border:solid 1pt">NV17</td>
          <td style="border:solid 1pt">NV18</td>
          <td style="border:solid 1pt">NV19</td>
          <td style="border:solid 1pt">NV20</td>
          <td style="border:solid 1pt">NV21</td>
          <td style="border:solid 1pt">NV22</td>
          <td style="border:solid 1pt">NV23</td>
          <td style="border:solid 1pt">NV24</td>
          <td style="border:solid 1pt">NV25</td>
          <td style="border:solid 1pt">NV26</td>
          <td style="border:solid 1pt">NV27</td>
          <td style="border:solid 1pt">NV28</td>
          <td style="border:solid 1pt">NV29</td>
          <td style="border:solid 1pt">NV30</td>
          <td style="border:solid 1pt">NV31</td>
          <td style="border:solid 1pt">NV32</td>
          <td style="border:solid 1pt">NNKD1</td>
          <td style="border:solid 1pt">NNKD2</td>
          <td style="border:solid 1pt">NNKD3</td>
          <td style="border:solid 1pt">NNKD4</td>
          <td style="border:solid 1pt">NNKD5</td>
          <td style="border:solid 1pt">NNKD6</td>
          <td style="border:solid 1pt">NNKD7</td>
          <td style="border:solid 1pt">NNKD8</td>
          <td style="border:solid 1pt">NNKD9</td>
          <td style="border:solid 1pt">NNKD10</td>
          <td style="border:solid 1pt">NNKD11</td>
          <td style="border:solid 1pt">NNKD12</td>
          <td style="border:solid 1pt">NNKD13</td>
          <td style="border:solid 1pt">NNKD14</td>
          <td style="border:solid 1pt">NNKD15</td>
          <td style="border:solid 1pt">NNKD16</td>
          <td style="border:solid 1pt">NNKD17</td>
          <td style="border:solid 1pt">NNKD18</td>
          <td style="border:solid 1pt">NNKD19</td>
          <td style="border:solid 1pt">NNKD20</td>
          <td style="border:solid 1pt">NNKD21</td>
          <td style="border:solid 1pt">NNKD22</td>
          <td style="border:solid 1pt">NNKD23</td>
          <td style="border:solid 1pt">NNKD24</td>
          <td style="border:solid 1pt">NNKD25</td>
          <td style="border:solid 1pt">NNKD26</td>
          <td style="border:solid 1pt">NNKD27</td>
          <td style="border:solid 1pt">NNKD28</td>
          <td style="border:solid 1pt">NNKD29</td>
          <td style="border:solid 1pt">NNKD30</td>
          <td style="border:solid 1pt">NNKD31</td>
          <td style="border:solid 1pt">NNKD32</td>
          <td style="border:solid 1pt">NNKV1</td>
          <td style="border:solid 1pt">NNKV2</td>
          <td style="border:solid 1pt">NNKV3</td>
          <td style="border:solid 1pt">NNKV4</td>
          <td style="border:solid 1pt">NNKV5</td>
          <td style="border:solid 1pt">NNKV6</td>
          <td style="border:solid 1pt">NNKV7</td>
          <td style="border:solid 1pt">NNKV8</td>
          <td style="border:solid 1pt">NNKV9</td>
          <td style="border:solid 1pt">NNKV10</td>
          <td style="border:solid 1pt">NNKV11</td>
          <td style="border:solid 1pt">NNKV12</td>
          <td style="border:solid 1pt">NNKV13</td>
          <td style="border:solid 1pt">NNKV14</td>
          <td style="border:solid 1pt">NNKV15</td>
          <td style="border:solid 1pt">NNKV16</td>
          <td style="border:solid 1pt">NNKV17</td>
          <td style="border:solid 1pt">NNKV18</td>
          <td style="border:solid 1pt">NNKV19</td>
          <td style="border:solid 1pt">NNKV20</td>
          <td style="border:solid 1pt">NNKV21</td>
          <td style="border:solid 1pt">NNKV22</td>
          <td style="border:solid 1pt">NNKV23</td>
          <td style="border:solid 1pt">NNKV24</td>
          <td style="border:solid 1pt">NNKV25</td>
          <td style="border:solid 1pt">NNKV26</td>
          <td style="border:solid 1pt">NNKV27</td>
          <td style="border:solid 1pt">NNKV28</td>
          <td style="border:solid 1pt">NNKV29</td>
          <td style="border:solid 1pt">NNKV30</td>
          <td style="border:solid 1pt">NNKV31</td>
          <td style="border:solid 1pt">NNKV32</td>
          
     </tr>
  
  <%

  
  
      while(rsSpectrum.next()&rsReal.next())
         {
    	 
    	  String longdata=rsSpectrum.getString("Sta_DVData");  
       	  int[][] DVData=new calc().getlongdata(longdata);;   
    	  double I=0;             
    	  int []NK=new int[32];   //存储各档粒子数（按直径分） 
    	  int []NV=new int[32];   //存储各档粒子数（按速度分） 
    	  double Pi=3.1415926;
    	  double []NNKD=new double[32];  //存储格挡粒子数浓度（按直径分） 
          double []NNKV=new double[32];  //存储格挡粒子数浓度（按速度分） 
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
    				&&longdata.indexOf("D")==-1&&longdata.indexOf("E")==-1&&longdata.indexOf("F")==-1){N0=0;NN0=0;}
    		
    		
    		
    		else{
    		
    		for(int m=0;m<32;m++){    //列循环
    			NK[m]=0;NNKD[m]=0;NNKV[m]=0;NV[m]=0;
    			for(int n=0;n<32;n++){   //行循环
    			NK[m]=NK[m]+DVData[n][m];            //各档粒子数（按直径分）
    			NV[m]=NV[m]+DVData[m][n];            //各档粒子数（按速度分）
    			NNKD[m]=NNKD[m]+DVData[n][m]/(54*Math.pow(10, -4)*DD[n]*60);            //各档粒子浓度（按直径分）
    			NNKV[m]=NNKV[m]+DVData[m][n]/(54*Math.pow(10, -4)*DV[n]*60);            //各档粒子浓度(按速度分)
    			BigDecimal NNKD_bg = new BigDecimal(NNKD[m]);
        		NNKD[m] = NNKD_bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();    //各档数浓度保留2位小数
    			BigDecimal NNKV_bg = new BigDecimal(NNKV[m]);
        		NNKV[m] = NNKV_bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();    //各档数浓度保留2位小数
    			}		
    			//if (m>=20)  //凡是大于5mm的粒子都删去
    			//{NK[m]=0;
    			//NV[m]=0;
    			//NNKD[m]=0;
    			//NNKV[m]=0;}
    			N0=N0+NK[m];          //计算总粒子数
    			NN0=NN0+NNKD[m];        //计算总粒子数浓度(按直径分)
    			R=R+((NK[m]*Math.pow(DD[m], 3)*Pi*Math.pow(10, -6))/(6*54*Math.pow(10, -4)));  //计算降水量
    			D1temp=D1temp+NK[m]*DD[m];                     
    			D2temp=D2temp+NK[m]*Math.pow(DD[m],2);
    			D3temp=D3temp+NK[m]*Math.pow(DD[m],3);
    			LQtemp=LQtemp+(NNKD[m]*Math.pow(DD[m], 3));
    			Ztemp=Ztemp+(NNKD[m]*Math.pow(DD[m],6));
    			Etemp=Etemp+(NK[m]*Math.pow(DV[m],2)*Math.pow(DD[m],3));
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
             out.print("<td style='border:solid 1pt'>"+rsReal.getString("Sta_GranuleNums")+"</td>");
             out.print("<td style='border:solid 1pt'>"+NN0+"</td>");
             out.print("<td style='border:solid 1pt'>"+Dmax+"</td>");
             out.print("<td style='border:solid 1pt'>"+R+"</td>");
             out.print("<td style='border:solid 1pt'>"+rsReal.getString("Sta_RainSum")+"</td>");
             out.print("<td style='border:solid 1pt'></td>");
             out.print("<td style='border:solid 1pt'>"+I+"</td>");
             out.print("<td style='border:solid 1pt'>"+rsReal.getString("Sta_RainIntensity")+"</td>");
             out.print("<td style='border:solid 1pt'>"+D1+"</td>");
             out.print("<td style='border:solid 1pt'>"+D2+"</td>");
             out.print("<td style='border:solid 1pt'>"+D3+"</td>");
             out.print("<td style='border:solid 1pt'>"+LQ+"</td>");
             out.print("<td style='border:solid 1pt'>"+Z+"</td>");
             out.print("<td style='border:solid 1pt'>"+rsReal.getString("Sta_RadarDBZ")+"</td>");
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
             out.print("<td style='border:solid 1pt'>"+NV[0]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[1]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[2]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[3]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[4]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[5]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[6]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[7]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[8]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[9]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[10]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[11]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[12]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[13]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[14]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[15]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[16]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[17]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[18]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[19]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[20]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[21]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[22]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[23]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[24]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[25]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[26]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[27]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[28]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[29]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[30]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NV[31]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[0]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[1]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[2]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[3]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[4]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[5]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[6]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[7]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[8]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[9]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[10]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[11]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[12]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[13]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[14]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[15]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[16]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[17]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[18]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[19]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[20]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[21]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[22]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[23]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[24]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[25]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[26]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[27]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[28]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[29]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[30]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKD[31]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[0]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[1]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[2]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[3]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[4]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[5]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[6]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[7]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[8]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[9]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[10]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[11]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[12]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[13]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[14]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[15]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[16]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[17]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[18]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[19]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[20]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[21]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[22]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[23]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[24]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[25]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[26]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[27]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[28]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[29]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[30]+"</td>");
             out.print("<td style='border:solid 1pt'>"+NNKV[31]+"</td>");
            
             
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