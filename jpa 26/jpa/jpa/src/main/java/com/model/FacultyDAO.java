package com.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.entity.Faculty;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class FacultyDAO implements FacultyManager {

	@Override
	public String saveData(Faculty F) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(F);
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Record Inserted Successfully...";
	}

	@Override
	public List<Faculty> getData() throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		//Query qry = em.createQuery("select f from Faculty f");
		//@SuppressWarnings("unchecked")
		
		TypedQuery<Faculty> qry = em.createQuery("select f from Faculty f", Faculty.class);
		List<Faculty> list = qry.getResultList();
		
		em.getTransaction().commit();
		
		em.close();
		emf.close();
		return list;
	}

	@Override
	public String updateData(int fid, Faculty F) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Faculty tmp = em.find(Faculty.class, fid);
		tmp.setFid(F.getFid());
		tmp.setFname(F.getFname());
		tmp.setDept(F.getDept());
		
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Updated Successfully";
	}

	@Override
	public String deleteData(int fid) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		Faculty tmp = em.find(Faculty.class, fid);
		em.remove(tmp);
		em.getTransaction().commit();
		
		em.close();
		emf.close();
		return "Deleted successfully";
	}

}
