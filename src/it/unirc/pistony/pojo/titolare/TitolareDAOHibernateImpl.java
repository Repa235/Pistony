package it.unirc.pistony.pojo.titolare;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import it.unirc.pistony.util.HibernateUtil;

public class TitolareDAOHibernateImpl implements TitolareDAO{

	
	protected TitolareDAOHibernateImpl(){}
	

	public Titolare getTitolare(Titolare titolare) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {			
			titolare= (Titolare) session.get(Titolare.class,titolare.getIdtitolare());
		} catch (HibernateException e) {
			
			return null;
			
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return titolare;
	}
	
	public boolean aggiornaTitolare(Titolare c) {
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

	
	public boolean inserisciTitolare(Titolare t) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		boolean result=false;
		try {
			transaction = session.beginTransaction();
			session.save(t);
			transaction.commit();
			result=true;
		} catch (Exception e) {
			
			transaction.rollback();
		
			e.printStackTrace();
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return result;
	}
}
