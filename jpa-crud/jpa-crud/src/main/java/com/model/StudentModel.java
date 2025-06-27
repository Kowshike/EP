package com.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.entity.Student;

@Stateless
@TransactionManagement(value = TransactionManagementType.BEAN)
public class StudentModel implements StudentRemote {
	
	@Override
	public String insert(Student s) throws Exception {
		EntityManagerFactory emf =Persistence.createEntityManagerFactory("JPA_CRUD");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(s);
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Inserted sucessfully";
	}

	@Override
	public String update(Student s) throws Exception {
		EntityManagerFactory emf =Persistence.createEntityManagerFactory("JPA_CRUD");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Student stu=em.find(Student.class, s.getId());
		stu.setName(s.getName());
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Updated sucessfully";
	}

	@Override
	public String delete(Student s) throws Exception {
		EntityManagerFactory emf =Persistence.createEntityManagerFactory("JPA_CRUD");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.remove(em.contains(s)?s:em.merge(s));
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Deleted Sucessfully";
	}


	public List<Student> retrive() throws Exception {
		EntityManagerFactory emf =Persistence.createEntityManagerFactory("JPA_CRUD");
		EntityManager em = emf.createEntityManager();
		try {
			String q="SELECT s from Student s";
			TypedQuery<Student> query = em.createQuery(q,Student.class);
			return query.getResultList();
		}finally {
			em.close();
			emf.close();
		}
	}

}
