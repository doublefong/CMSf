package cn.mysql.project;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class Scourse {
	private int course_no;
	private int stu_id;
	private String tea_score;
	private String stu_grade;
    private String title;
    private String tea_evaluation;
    public int getCourse_no() 
   {
	return course_no;
   }
    public void setCourse_no(int course_no) 
    {
    	this.course_no = course_no;
    }
    public int getStu_id() 
    {
    	return stu_id;
    }
    public void setStu_id(int stu_id) {
    	this.stu_id=stu_id;
    }
    public String getTea_score() 
    {
    	return tea_score;
    }
    public void setTea_score(String tea_score)
    {
    	this.tea_score=tea_score;
    	
    }
    public String getStu_grade() 
    {
    	return stu_grade;
    }
    public void setStu_grade(String stu_grade)
    {
    	this.stu_grade=stu_grade;
    	
    }
    public String getTitle()
    {
	return title;
    }
    public void setTitle(String title) 
    {
    	this.title = title;
    }
    public String getTea_evaluation()
{
	return tea_evaluation;
}

public void setTea_evaluation(String tea_evaluation)
{
	this.tea_evaluation= tea_evaluation;
}

public List<Scourse> info_list(int id)
{
	//open session
Configuration cfg=new Configuration().configure();

ServiceRegistry sr = new StandardServiceRegistryBuilder()
						.applySettings(cfg.getProperties())
						.build();
SessionFactory sf = cfg.buildSessionFactory(sr);
Session session = sf.openSession();
Transaction tx = session.beginTransaction();
List<Scourse>list = session.createQuery("from Scourse b where stu_id=?").setInteger(0,id).list();
tx.commit();
session.close();
 return list;
}
public List<Scourse> Tinfo_list(int cno)
{
	//open session
Configuration cfg=new Configuration().configure();

ServiceRegistry sr = new StandardServiceRegistryBuilder()
						.applySettings(cfg.getProperties())
						.build();
SessionFactory sf = cfg.buildSessionFactory(sr);
Session session = sf.openSession();
Transaction tx = session.beginTransaction();
List<Scourse>list = session.createQuery("from Scourse b where course_no=?").setInteger(0,cno).list();
tx.commit();
session.close();
 return list;
}
}
