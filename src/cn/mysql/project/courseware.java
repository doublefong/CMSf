package cn.mysql.project;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class courseware {
	private int course_no;
	private String file_title;
	public int getCourse_no()
	{
	return this.course_no;	
	}
	public void setCourse_no(int course_no)
	{
	this.course_no=course_no;	
	}
	public String getFile_title()
	{
	return this.file_title;	
	}
	public void setFile_title(String file_title)
	{
	this.file_title=file_title;	
	}
	
}
