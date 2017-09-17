<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
     <td align="center" colspan="2" height="40">工号 </td>
     <td align="center" colspan="2" height="40"><%=request.getParameter("id") %></td>
</tr>
<tr>
     <td align="center" colspan="2" height="40">身份</td>
      <td align="center" colspan="2" height="40">teacher</td>
</tr>

 <a href="tea_main.jsp?id=<%=request.getParameter("id") %>">返回教师界面</a> 


</table>
  </body>
</html>

