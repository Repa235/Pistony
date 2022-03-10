package it.unirc.pistony.pojo.Accounttitolare;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unirc.pistony.util.HibernateUtil;







public class AccounttitolareDAOHibernateImpl implements AccounttitolareDAO{

	
	protected AccounttitolareDAOHibernateImpl(){
	}

	public Accounttitolare getAccounttitolare(Accounttitolare c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
			c= (Accounttitolare) session.get(Accounttitolare.class,c.getIdtitolare());
			
		} catch (HibernateException e) {
			
			return null;
			
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return c;
	}

	public boolean inserisciAccounttitolare(Accounttitolare c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		boolean result=false;
		try {
			transaction = session.beginTransaction();
			session.save(c);
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

	public boolean aggiornaAccounttitolare(Accounttitolare c) {
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
	
	public boolean eliminaAccounttitolare(Accounttitolare c) {
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
	
	public Accounttitolare getAcc_titolareByEmail(Accounttitolare c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Accounttitolare> tit=null;
		
		try {
			tit=(List<Accounttitolare>) session.createSQLQuery("Select * from accounttitolare where email = :email").addEntity(Accounttitolare.class).setParameter("email", c.getEmail()).list();
			transaction.commit();
			
		} catch (HibernateException e) {
			transaction.rollback();
			return null;
			
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		if(tit.size()==0)return null;
		return tit.get(0);
	}

	


}
