package cn.mysql.project;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class teaHomework 
{
private int course_no;
private int homework_no;
public int getCourse_no()
{
return this.course_no;	
}
public void setCourse_no(int course_no)
{
this.course_no=course_no;	
}
public int getHomework_no()
{
return this.homework_no;	
}
public void setHomework_no(int homework_no)
{
this.homework_no=homework_no;	
}


}
