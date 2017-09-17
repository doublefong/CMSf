<%@ page language="java" import="java.util.*,cn.mysql.project.*" pageEncoding="UTF-8"%>
<%
Student student=new Student();
List<Student> list=student.stu_list();
%>
<html>
  
  
  <body>
<table>
<tr>
<td>name</td>
</tr>

<%for(Student stu:list){%>

<td><%=stu.getId()%></td>
<td><%=stu.getName()%></td>
<td><%=stu.getPassword()%></td>
<td>
<a href="adm_modify.jsp?method=delete&sid=<%=stu.getId()%>">删除</a>
<%} %>
</td>
<tr>
<td>
<a href="adm_modify.jsp?method=addStu">增加学生账号</a></td>
 <a href="../admin.jsp">返回管理员界面</a> 
</tr>
</table>
  </body>
</html>


