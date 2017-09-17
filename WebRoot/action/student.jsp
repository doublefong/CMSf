<%@ page language="java" import="java.util.*,cn.mysql.project.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	

  </head>
  
  <body>
   <table align="center"width="450"height="260"border="1">

    
<tr>
     <td align="center" colspan="2" height="40">学号 </td>
     <td align="center" colspan="2" height="40"><%=request.getParameter("sid") %></td>
</tr>
<tr>
     <td align="center" colspan="2" height="40">身份</td>
      <td align="center" colspan="2" height="40">student</td>
</tr>

 <a href="stu_main.jsp?id=<%=request.getParameter("sid")%>">返回学生主页</a> 


</table>
  </body>
</html>