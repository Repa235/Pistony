package it.unirc.pistony.pojo.Intervento;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unirc.pistony.pojo.Acquisto.Acquisto;
import it.unirc.pistony.pojo.Prenota.Prenota;
import it.unirc.pistony.util.HibernateUtil;





public class InterventoDAOHibernateImpl implements InterventoDAO{

	
	protected InterventoDAOHibernateImpl(){
	}

	public Intervento getIntervento(Intervento c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {			
			c= (Intervento) session.get(Intervento.class,c.getIdintervento());
		} catch (HibernateException e) {
			
			return null;
			
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return c;
	}

	public int salvaIntervento(Intervento c) {
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

	public boolean aggiornaIntervento(Intervento c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		boolean result=true;
		try {
			transaction = session.beginTransaction();
			session.update(c);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			result=false;
		} finally {
			if (session!=null) 
				session.close();
		}
		return result;
	}
	public List<Intervento> getAllInterventi() {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Intervento> modifiche;
		try {

			modifiche = (List<Intervento>) session.createQuery("from Intervento").list();
			System.out.println(modifiche);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}

		return modifiche;
	}
	
	public Intervento getLastIntervento() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		Intervento i = null; 
		try {
			i = (Intervento) session.createQuery("from Intervento order by idintervento desc").setMaxResults(1).uniqueResult();
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return i;
	}
}
