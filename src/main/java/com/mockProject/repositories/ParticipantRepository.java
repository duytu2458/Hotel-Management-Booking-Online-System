package com.mockProject.repositories;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.mockProject.commons.ConnectionUtil;
import com.mockProject.model.Classes;
import com.mockProject.model.Participant;
import com.mockProject.model.School;

@Repository
public class ParticipantRepository {
	

	public List<School> getDataTableSchool() {
		SessionFactory sessionFactory = ConnectionUtil.getSessionFactory();
		Session session = null;
		List<School> listDataTableSchools = null;
		try {
			session = sessionFactory.openSession();
			String hqlString = "From School";
			Query query = session.createQuery(hqlString);
			listDataTableSchools = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return listDataTableSchools;
	}

	public List<Classes> getDataTableClass(String id) {
		SessionFactory sessionFactory = ConnectionUtil.getSessionFactory();
		Session session = null;
		List<Classes> listClasses = null;
		try {
			session = sessionFactory.openSession();
			String hqlString = String.format("From Classes where school = '%s'",id);
			Query query = session.createQuery(hqlString);
			listClasses = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			session.close();
		}
		return listClasses;
	}

	public String getAdd(List<Participant> listParticipants) {
		SessionFactory sessionFactory = ConnectionUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();
			for (Participant participant : listParticipants) {
				session.save(participant);
			}
			tx.commit();
			return "Add thanh cong " + listParticipants.size() + " Participant !!!";
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
				e.printStackTrace();
			}
			return "Co loi trong qua trinh luu vao Database !!!";
		} finally {
			session.close();
		}
		
	}

	public List<Participant> getDataTableParticipants() {
		SessionFactory sessionFactory = ConnectionUtil.getSessionFactory();
		Session session = null;
		List<Participant> listParticipants = null;
		try {
			session = sessionFactory.openSession();
			String hqlString = String.format("From Participant");
			Query query = session.createQuery(hqlString);
			listParticipants = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			session.close();
		}
		return listParticipants;
	}

	



	
	
	
	

}
