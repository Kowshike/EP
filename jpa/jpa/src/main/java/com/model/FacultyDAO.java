package com.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.entity.Faculty;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class FacultyDAO implements FacultyManager {

	@Override
	public String saveData(Faculty F) throws Exception {
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("jpa");
	   EntityManager em=emf.createEntityManager();
	   em.getTransaction().begin();
	   em.persist(F);
	   em.getTransaction().commit();
	   em.close();
	   emf.close();
		return "Record inserted Successfully";
	}

	@Override
	public List<Faculty> getData() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateData(int fid, Faculty F) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String deleteData(int fid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	

}
