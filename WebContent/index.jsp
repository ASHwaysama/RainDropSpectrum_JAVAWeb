<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>雨滴谱数据查询</title>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script> 
</head>
<body>
<h1>分钟数据查询</h1>
<p>请输入要查询的站点ID<p>



<form action="minute.jsp" method="post" name="form1">
<select name= "ID">  
  <option value ="3014">江城镇政府3014</option>  
  <option value ="3026">云龙水城河3026</option>  
  <option value="3027">袜度村委会3027</option>  
  <option value="3028">真金万林场3028</option>  
  <option value="3078">安化乡政府3078</option> 
  <option value="3107">旧县烟叶站3107</option> 
  <option value="3110">茨营3110</option> 
  <option value="3114">江川县气象局3114</option> 
  <option value="3115">麒麟3115</option> 
  <option value="3116">中屏3116</option> 
  <option value="3120">植桂3120</option> 
  <option value="3122">王家庄烟叶站3122</option> 
  <option value="3150">前卫镇政府3150</option> 
  <option value="3166">三合3166</option> 
  <option value="3186">江城海门村委会3186</option> 
  <option value="3198">马过河烟叶站3198</option> 
  <option value="3199">马龙县站3199</option> 
  <option value="3202">大街小白坡村委会3202</option> 
  <option value="3203">九溪镇政府3203</option> 
  <option value="3207">雄关乡政府3207</option>
  <option value="3213">白泥坡3213</option>  
</select>
  
<p>请输入要查询的起始时间<p>
<input name= "Start" type="text" id="d241" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:300px"/>
<p>请输入要查询的终止时间<p>
<input name= "End" type="text" id="d241" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:300px"/>
<input type="submit" value="提交" /> 

</form>


<h1>粒径、粒速分档累计查询</h1>
<p>请输入要查询的站点ID<p>



<form action="add-up.jsp" method="post" name="form1">
<select name= "ID">  
  <option value ="3014">江城镇政府3014</option>  
  <option value ="3026">云龙水城河3026</option>  
  <option value="3027">袜度村委会3027</option>  
  <option value="3028">真金万林场3028</option>  
  <option value="3078">安化乡政府3078</option> 
  <option value="3107">旧县烟叶站3107</option> 
  <option value="3110">茨营3110</option> 
  <option value="3114">江川县气象局3114</option> 
  <option value="3115">麒麟3115</option> 
  <option value="3116">中屏3116</option> 
  <option value="3120">植桂3120</option> 
  <option value="3122">王家庄烟叶站3122</option> 
  <option value="3150">前卫镇政府3150</option> 
  <option value="3166">三合3166</option> 
  <option value="3186">江城海门村委会3186</option> 
  <option value="3198">马过河烟叶站3198</option> 
  <option value="3199">马龙县站3199</option> 
  <option value="3202">大街小白坡村委会3202</option> 
  <option value="3203">九溪镇政府3203</option> 
  <option value="3207">雄关乡政府3207</option>
  <option value="3213">白泥坡3213</option>  
</select>
  
<p>请输入要查询的起始时间<p>
<input name= "Start" type="text" id="d241" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:300px"/>
<p>请输入要查询的终止时间<p>
<input name= "End" type="text" id="d241" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:300px"/>
<input type="submit" value="提交" /> 

</form>
</body>
</html>