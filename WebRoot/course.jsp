<%@ page language="java" import="java.util.*,cn.mysql.project.*" pageEncoding="UTF-8"%>
<%
String tea_id=request.getParameter("tid");
int Id=Integer.valueOf(tea_id).intValue(); 
course cou=new course();
List<course>list=cou.course_list(Id);
%>
<html>
  
  
  <body>
<table>
<tr>
<td>课程号</td>
<td>课程名</td>
<td>课程学分</td>
</tr>

<%
	for(course c:list){
%>
<tr>
<td><%=c.getCourse_no()%>     </td>
<td><%=c.getTitle()%>   </td>
<td><%=c.getCredit()%></td>

<td><a href="action/Tea_cou.jsp?cno=<%=c.getCourse_no()%>">查看课件</a></td>
<td><a href="action/Tea_cou.jsp?cno=<%=c.getCourse_no()%>">查看作业信息</a></td>
<td><a href="cou_infolist.jsp?cno=<%=c.getCourse_no()%>">查看教学信息</a></td><!-- grade evaluation -->
</tr>
<%} %>
</table>
  </body>
</html>


