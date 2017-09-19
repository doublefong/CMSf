<%@ page language="java" import="java.util.*,cn.mysql.project.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String cno=request.getParameter("cno");
String sid=request.getParameter("sid");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>评分</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <body>
<form action="action/info_modify.jsp" method="post">
<table align="center"width="450"height="260"border="1">

<tr>
     <td align="center" colspan="2" height="40">
课号：<input type="text" width="5" name="cno"value="<%=cno %>">
</td>
</tr>
<tr>
     <td align="center" colspan="2" height="40">
学生学号：<input type="text" width="5" name="sid"value="<%=sid%>">
</td>
</tr>

<tr>
<td align="center"colspan="2">
成绩：<input type="text" width="5" name="grade" value="">
</td>
<tr>
<td align="center" colspan="2">
 <input type="submit" name="submit" value="发布">
</td>
</tr>

</table>
</form>

  </body>
