<%@ page language="java" import="java.util.*,cn.mysql.project.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String cno=request.getParameter("cno");
String sid=request.getParameter("sid");

int Id=Integer.valueOf(sid).intValue(); 
int no=Integer.valueOf(cno).intValue(); 
String grade=request.getParameter("grade");
Scourse cou=new Scourse();
if(grade!=null)
{
cou.modify(Id, no, grade);
}
String evaluation=request.getParameter("tea_evaluation");
String score=request.getParameter("tea_score");
if(evaluation!=null)
{
cou.modify2(Id,no,evaluation,score)	;
}
%>
