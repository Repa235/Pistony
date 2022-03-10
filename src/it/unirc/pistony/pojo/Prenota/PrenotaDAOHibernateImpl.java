package it.unirc.pistony.pojo.Prenota;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.util.HibernateUtil;

public class PrenotaDAOHibernateImpl implements PrenotaDAO{


	protected PrenotaDAOHibernateImpl(){
	}

	public Prenota getPrenota(Prenota c) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		try {			
			c= (Prenota) session.get(Prenota.class,c.getIdprenota());
		} catch (HibernateException e) {

			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return c;
	}

	public int salvaPrenota(Prenota c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int id=0;
		try {
			transaction = session.beginTransaction();
			id= (Integer) session.save(c);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return id;
	}

	public List<Prenota> getAllPrenotazioni() {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Prenota> clienti;
		try {

			clienti = (List<Prenota>) session.createQuery("from Prenota").list();
			System.out.println(clienti);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}

		return clienti;
	}

	public boolean eliminaPrenota(Prenota c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction=null;
		try {
			transaction = session.beginTransaction();
			session.delete(c);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
			return false;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return true;
	}
	


	}
