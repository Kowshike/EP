package com.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.json.simple.JSONObject;

import com.entity.Courses;

public class CourseManager {

	public String saveData(Courses C) throws Exception
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(C);
		em.getTransaction().commit();
		
		em.close();
		emf.close();
		return "Record Inserted Successfully...";
	}
	public String updateData(Courses C) throws Exception
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		Courses tmp=em.find(Courses.class, C.getCcode());
		tmp.setCname(C.getCname());
		tmp.setCdept(C.getCname());
		em.getTransaction().commit();
		
		em.close();
		emf.close();
		return "Record Updated Successfully...";
	}
	@SuppressWarnings("unchecked")
	public String getData(Courses C) throws Exception
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		TypedQuery<Courses> qry=em.createQuery("select c from Courses c",Courses.class);
		List<String> list=new ArrayList<String>();
		for(Courses c:qry.getResultList()) {
			JSONObject obj=new JSONObject();
			obj.put("ccode", c.getCcode());
			obj.put("cname", c.getCname());
			obj.put("cdept", c.getCdept());
			list.add(obj.toJSONString());
			
		}
		em.getTransaction().commit();
		
		em.close();
		emf.close();
		return "Successfully...";
	}
	public String deleteData(String ccode) throws Exception
	  {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	    EntityManager em = emf.createEntityManager();
	    
	    em.getTransaction().begin();
	    
	    Courses tmp = em.find(Courses.class, ccode);
	    em.remove(tmp);
	    
	    em.getTransaction().commit();
	    
	    em.close();
	    emf.close();
	    return "Record Deleted Successfully...";
	  }
}
