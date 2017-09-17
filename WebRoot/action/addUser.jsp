<%@ page language="java" import="java.util.*,cn.mysql.project.*" pageEncoding="ISO-8859-1"%>
<%
String name = request.getParameter("name");
String sid=request.getParameter("sid");
String tid=request.getParameter("tid");
String topage=null;
if(sid!=null)
{
	int Id=Integer.valueOf(sid).intValue(); 
	Student stu=new Student();
	stu.addUser(Id, name);
	topage="stu_list.jsp";
}
else if(tid!=null)
{
	int id=Integer.valueOf(tid).intValue(); 	
	teacher tea=new teacher();
	tea.addUser(id,name);
	topage="tealist.jsp";
}

%> 
<jsp:forward page="<%=topage%>" />
