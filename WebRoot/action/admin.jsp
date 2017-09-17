<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
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
   <table align="center"width="450"height="260"border="1">

    
<tr>
     <td align="center" colspan="2" height="40">工号 </td>
     <td align="center" colspan="2" height="40"><%=request.getParameter("id") %></td>
</tr>
<tr>
     <td align="center" colspan="2" height="40">身份</td>
      <td align="center" colspan="2" height="40">admin</td>
</tr>

 <a href="admin.jsp">返回管理员界面</a> 


</table>
  </body>
</html>
