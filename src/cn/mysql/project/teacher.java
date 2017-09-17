package cn.mysql.project;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class teacher {
	private int id;
	private String name;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
public void modify(int id,String name,String password){
		
		Configuration cfg=new Configuration().configure();
		
		ServiceRegistry sr = new StandardServiceRegistryBuilder()
								.applySettings(cfg.getProperties())
								.build();
		SessionFactory sf = cfg.buildSessionFactory(sr);

		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();

		teacher user = new teacher();
		user.setId(id);
		user.setName(name);
		user.setPassword(password);
		session.save(user);
		tx.commit();
		session.close();
	}
public boolean valid(int Id,String password)
{
	boolean valid=false;
	Configuration cfg=new Configuration().configure();

	ServiceRegistry sr = new StandardServiceRegistryBuilder()
							.applySettings(cfg.getProperties())
							.build();
	SessionFactory sf = cfg.buildSessionFactory(sr);
	Session session = sf.openSession();
	teacher user=(teacher)session.get(teacher.class,new Integer(Id));
	
	if(password.equals(user.getPassword()))
	valid=true;
	else
		valid=false;
	session.close();
return valid;
}
public List<teacher>tea_list()

{
		//open session
	Configuration cfg=new Configuration().configure();

	ServiceRegistry sr = new StandardServiceRegistryBuilder()
							.applySettings(cfg.getProperties())
							.build();
	SessionFactory sf = cfg.buildSessionFactory(sr);
	Session session = sf.openSession();
	Transaction tx = session.beginTransaction();
	@SuppressWarnings("unchecked")
	List<teacher>list = session.createQuery("from teacher").list();
	tx.commit();

	session.close();
     return list;
}
public void addUser(int Id,String name)
{
Configuration cfg=new Configuration().configure();
	
	ServiceRegistry sr = new StandardServiceRegistryBuilder()
							.applySettings(cfg.getProperties())
							.build();
	SessionFactory sf = cfg.buildSessionFactory(sr);

	Session session = sf.openSession();
	Transaction tx = session.beginTransaction();
    teacher user=new teacher();
    user.setId(Id);
	user.setName(name);
	user.setPassword(name);	
	session.save(user);
    tx.commit();
   	session.close();
}
public void deleteUser(int Id)
{
	Configuration cfg=new Configuration().configure();
	
	ServiceRegistry sr = new StandardServiceRegistryBuilder()
							.applySettings(cfg.getProperties())
							.build();
	SessionFactory sf = cfg.buildSessionFactory(sr);
	Session session = sf.openSession();
	Transaction tx = session.beginTransaction(); 
	       	try
	       	{
	       		teacher user = (teacher)session.get(teacher.class,new Integer(Id));
	       	   if(user!=null)
	       		session.delete(user);
	       	   session.flush();
	       	}catch(Exception e)
	       	{
	       		System.out.print("failed to delete object");
	       		e.printStackTrace();
	       	}	
	       
	    tx.commit();
      	session.close();
}
}
