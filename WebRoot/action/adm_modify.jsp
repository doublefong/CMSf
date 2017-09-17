<%@ page language="java" import="java.util.*,cn.mysql.project.*" pageEncoding="UTF-8"%>
<%
String method = request.getParameter("method");// 操作方法
String sid=request.getParameter("sid");
String tid=request.getParameter("tid");
String topage="../admin.jsp";
teacher tea=new teacher();
Student stu=new Student();
if(method.equals("delete")) 
{
	if(sid!=null)
   {
int Id=Integer.valueOf(sid).intValue(); 
stu.deleteUser(Id);    

topage = "../index.jsp";
   }
	if(tid!=null)
	{
		int Id=Integer.valueOf(tid).intValue(); 
		tea.deleteUser(Id);    
		topage = "tea_list";	
	}
}
else if(method.equals("addStu"))
{
	topage = "../addStu.jsp";
}
else if(method.equals("addTea"))
{
	topage = "../addTea.jsp";
}

%>
<jsp:forward page="<%=topage%>" />

