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
<h3>您要查询的站点ID是</h3>
<%= request.getParameter("ID")%>

<h3>您要查询的起始时间是</h3>
<%= request.getParameter("Start")%>
<%Timestamp Start = Timestamp.valueOf(request.getParameter("Start")); %>

<h3>您要查询的终止时间是</h3>
<%= request.getParameter("End")%>
<%Timestamp End = Timestamp.valueOf(request.getParameter("End")); %>
<br/>


 <%
 		Connection conn = null;	
 		conn=new DBconn().getConn();
        Statement statSpectrum = null;
        ResultSet rsSpectrum = null;
        statSpectrum = conn.createStatement();
        String Spectrumsql = "select Sta_DVData from SpectrumData where Sta_ID = "+request.getParameter("ID")+" and Sta_TimeIn > '"+Start+"' and Sta_TimeIn < '"+End+"'";
        rsSpectrum = statSpectrum.executeQuery(Spectrumsql); 
        int[][] SUMDV;
        SUMDV=new int[32][32];
  %> 



  <%

  
  
      while(rsSpectrum.next())
         {
    	  String longdata=rsSpectrum.getString("Sta_DVData");
    	  int[][] DVData=new calc().getlongdata(longdata);
    	  for(int i=0;i<DVData.length;i++){                   //二维数组累加
    	  for(int j=0;j<DVData[i].length;j++){
    		SUMDV[i][j]=DVData[i][j]+SUMDV[i][j];
    	   			   }
    			  }	
    		  
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
         
         <table width="1060" cellSpacing=0 height="12" style="font-size:10pt;border: 1pt"> 
         <tr style="border:solid 1pt">
         <td style="border:solid 1pt">速度/直径</td>
         <td style="border:solid 1pt">d1</td>
         <td style="border:solid 1pt">d2</td>
         <td style="border:solid 1pt">d3</td>
         <td style="border:solid 1pt">d4</td>
         <td style="border:solid 1pt">d5</td>
         <td style="border:solid 1pt">d6</td>
         <td style="border:solid 1pt">d7</td>
         <td style="border:solid 1pt">d8</td>
         <td style="border:solid 1pt">d9</td>
         <td style="border:solid 1pt">d10</td>
         <td style="border:solid 1pt">d11</td>
         <td style="border:solid 1pt">d12</td>
         <td style="border:solid 1pt">d13</td>
         <td style="border:solid 1pt">d14</td>
         <td style="border:solid 1pt">d15</td>
         <td style="border:solid 1pt">d16</td>
         <td style="border:solid 1pt">d17</td>
         <td style="border:solid 1pt">d18</td>
         <td style="border:solid 1pt">d19</td>
         <td style="border:solid 1pt">d20</td>
         <td style="border:solid 1pt">d21</td>
         <td style="border:solid 1pt">d22</td>
         <td style="border:solid 1pt">d23</td>
         <td style="border:solid 1pt">d24</td>
         <td style="border:solid 1pt">d25</td>
         <td style="border:solid 1pt">d26</td>
         <td style="border:solid 1pt">d27</td>
         <td style="border:solid 1pt">d28</td>
         <td style="border:solid 1pt">d29</td>
         <td style="border:solid 1pt">d30</td>
         <td style="border:solid 1pt">d31</td>
         <td style="border:solid 1pt">d32</td>
         </tr>
       <%	  for(int i=0;i<SUMDV.length;i++){   
    	   out.print("<td style='border:solid 1pt'>v"+(i+1)+"</td>");
     		for(int j=0;j<SUMDV[i].length;j++){
     			
     	
     	   	
     			 out.print("<td style='border:solid 1pt'>"+SUMDV[i][j]+"</td>");
     	   	
     	   		   }
     		out.print("<tr style='border:solid 1pt'>");
     		
     			  }	
   %>
   </table>
   
</body>
</html>