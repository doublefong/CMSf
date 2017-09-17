package cn.mysql.project;
import java.math.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

// mapping stu_homework
public class Shomework {
	
private int homework_no;
private int stu_id;
private boolean status;
private String opinion;
private String grade;
private int course_no;
public int getHomework_no()
{
return homework_no;	
}
public void setHomework_no(int homework_no)
{
	this.homework_no=homework_no;
}
public int getStu_id()
{
return stu_id;	
}
public void setStu_id(int stu_id)
{
this.stu_id=stu_id;	
}
public boolean getStatus()
{
return this.status;	
}
public void setStatus(boolean status)
{
	this.status=status;
}
public String getOpinion()
{
	return this.opinion;
}
public void setOpinion(String opinion)
{
this.opinion	=opinion;
}
public String getGrade()
{
return this.grade;	
}
public void setGrade(String grade)
{
this.grade=grade;	
}
public int getCourse_no()
{
return this.course_no;	
}
public void setCourse_no(int course_no)
{
this.course_no=course_no;	
}

}
