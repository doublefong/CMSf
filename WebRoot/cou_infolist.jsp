<%@ page language="java" import="java.util.*,cn.mysql.project.*,java.io.PrintWriter;" pageEncoding="UTF-8"%>
<%
Scourse info=new Scourse();
String cno=request.getParameter("cno");
String sid=request.getParameter("sid");
if(cno!=null)
{
int Id=Integer.valueOf(cno).intValue();
List<Scourse>list=info.Tinfo_list(Id);
%>
<html>
  <body>
   <table>
<tr>
<td>课程号 </td><td>课程名</td> <td>学生学号 </td> <td>学生成绩</td><td>评教分数 </td>   <td> evaluation</td>
</tr>
<%for(Scourse cou:list){%>
<tr>

<td><%=cou.getCourse_no()%></td>
<td><%=cou.getTitle()%></td>
<td><%=cou.getStu_id()%></td>
<%	
if(cou.getStu_grade().equals("null"))
{
%>
<td><a href="action/submit_info.jsp?sid=<%=cou.getStu_id()%>&cno=<%=cou.getCourse_no()%>">评分</a></td>
<!-- 评分 -->
<%} 

else{%>
<td><%=cou.getStu_grade() %></td>
<%} %>
<td><%=cou.getTea_score()%></td>
<td><%=cou.getTea_evaluation()%></td>

</tr>
<%} }%>
</table>
<%
if(sid!=null)
{
	int id=Integer.valueOf(sid).intValue();
	List<Scourse>list=info.info_list(id);	

%>
<table>
<tr>
<td>课程号 </td><td>课程名</td> <td>学生学号 </td> <td>学生成绩</td><td>评教分数 </td>   <td> evaluation</td>
</tr>
<%for(Scourse cou:list){%>
<tr>
<td><%=cou.getCourse_no()%></td>
<td><%=cou.getTitle()%></td>
<td><%=cou.getStu_id()%></td>
<td><%=cou.getStu_grade()%></td>
<%	
if(cou.getTea_score().equals("null"))
{
%>
<td><a href="tea_evaluation.jsp?sid=<%=cou.getStu_id()%>&cno=<%=cou.getCourse_no()%>">评教</a></td>
<td><a href="tea_evaluation.jsp?sid=<%=cou.getStu_id()%>&cno=<%=cou.getCourse_no()%>">评教</a></td>
<%} 
else{%>
<td><%=cou.getTea_score()%></td>
<td><%=cou.getTea_evaluation()%></td>
<%} %>
</tr>
<%} }%>


</table>
  </body>
</html>
