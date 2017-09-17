package cn.mysql.project;
import java.util.*;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;



public class course {
private int course_no;
private String title;
private double credit;
private int tea_id;
public int getCourse_no()
{
return course_no;	
}
public void setCourse_no(int course_no)
{
	this.course_no=course_no;
}
public String getTitle()
{
return title;	
}
public void setTitle(String title)
{
	this.title=title;
}
public double getCredit()
{
return credit;	
}
public void setCredit(double credit)
{
	this.credit=credit;
}
public int getTea_id()
{
return tea_id;	
}
public void setTea_id(int tea_id)
{
	this.tea_id=tea_id;
}
public List<course> course_list(int id)
{
	//open session
Configuration cfg=new Configuration().configure();

ServiceRegistry sr = new StandardServiceRegistryBuilder()
						.applySettings(cfg.getProperties())
						.build();
SessionFactory sf = cfg.buildSessionFactory(sr);
Session session = sf.openSession();
Transaction tx = session.beginTransaction();
List<course>list = session.createQuery("from course b where tea_id=?").setInteger(0,id).list();
tx.commit();
session.close();
 return list;
}
}
