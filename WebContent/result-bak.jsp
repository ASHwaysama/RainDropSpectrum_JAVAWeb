<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,dao.*,bean.*,java.sql.*"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>您要查询的站点ID是<p>
<%= request.getParameter("ID")%>

<p>您要查询的起始时间是<p>
<%= request.getParameter("Start")%>
<%Timestamp Start = Timestamp.valueOf(request.getParameter("Start")); %>

<p>您要查询的终止时间是<p>
<%= request.getParameter("End")%>
<%Timestamp End = Timestamp.valueOf(request.getParameter("End")); %>
 <%
 
        Connection conn = null;
        Statement stat = null;
        ResultSet rs = null;
        //加载数据库驱动类
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
        //数据库连接URL
        String url = "jdbc:sqlserver://192.168.99.20:1433;DatabaseName=CW_YDPYDB";
        //数据库用户名
        String user = "sa";
        //数据库密码
        String password = "ryzx_123";
        //根据数据库参数取得一个数据库连接
     conn = DriverManager.getConnection(url, user, password);
     stat = conn.createStatement();
     String sql = "select Sta_ID,Sta_TimeIn,Sta_WeatherCode,Sta_MORSee,Sta_KineticEnergy from RealData where Sta_ID = "+request.getParameter("ID")+" and Sta_TimeIn > '"+Start+"' and Sta_TimeIn < '"+End+"'";
     rs = stat.executeQuery(sql); 
  %> 


<table width="260" cellSpacing=0 height="12" style="font-size:10pt;border: 1pt">
      <tr style="border:solid 1pt">
          <td style="border:solid 1pt">站号</td>
          <td style="border:solid 1pt">总粒子数</td>
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
          <td style="border:solid 1pt">v1</td>
          <td style="border:solid 1pt">v2</td>
          <td style="border:solid 1pt">v3</td>
          <td style="border:solid 1pt">v4</td>
          <td style="border:solid 1pt">v5</td>
          <td style="border:solid 1pt">v6</td>
          <td style="border:solid 1pt">v7</td>
          <td style="border:solid 1pt">v8</td>
          <td style="border:solid 1pt">v9</td>
          <td style="border:solid 1pt">v10</td>
          <td style="border:solid 1pt">v11</td>
          <td style="border:solid 1pt">v12</td>
          <td style="border:solid 1pt">v13</td>
          <td style="border:solid 1pt">v14</td>
          <td style="border:solid 1pt">v15</td>
          <td style="border:solid 1pt">v16</td>
          <td style="border:solid 1pt">v17</td>
          <td style="border:solid 1pt">v18</td>
          <td style="border:solid 1pt">v19</td>
          <td style="border:solid 1pt">v20</td>
          <td style="border:solid 1pt">v21</td>
          <td style="border:solid 1pt">v22</td>
          <td style="border:solid 1pt">v23</td>
          <td style="border:solid 1pt">v24</td>
          <td style="border:solid 1pt">v25</td>
          <td style="border:solid 1pt">v26</td>
          <td style="border:solid 1pt">v27</td>
          <td style="border:solid 1pt">v28</td>
          <td style="border:solid 1pt">v29</td>
          <td style="border:solid 1pt">v30</td>
          <td style="border:solid 1pt">v31</td>
          <td style="border:solid 1pt">v32</td>
          <td style="border:solid 1pt">数据时间</td>
          <td style="border:solid 1pt">天气代码</td>
          <td style="border:solid 1pt">消光能见度</td>
          <td style="border:solid 1pt">动能</td>
     </tr>
  <%
      while(rs.next())
         {
    	  
    	  
    	  
    	  
    	  
             out.print("<tr style='border:solid 1pt'>");
             out.print("<td style='border:solid 1pt'>"+rs.getString("Sta_ID")+"</td>");
             out.print("<td style='border:solid 1pt'>"+rs.getString("Sta_TimeIn")+"</td>");
             out.print("<td style='border:solid 1pt'>"+rs.getString("Sta_WeatherCode")+"</td>");
             out.print("<td style='border:solid 1pt'>"+rs.getString("Sta_MORSee")+"</td>");
             out.print("<td style='border:solid 1pt'>"+rs.getString("Sta_KineticEnergy")+"</td>");
             out.print("</tr>"); 
         }
         if(rs != null)
         {
             rs.close();
         }
         if(stat!=null)
         {
             stat.close();
         }
         if(conn!=null)
         {
             conn.close();
         } 
   %>
   </table>
</body>
</html>