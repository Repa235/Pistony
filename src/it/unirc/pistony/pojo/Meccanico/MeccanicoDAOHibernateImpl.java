package it.unirc.pistony.pojo.Meccanico;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.util.HibernateUtil;






public class MeccanicoDAOHibernateImpl implements MeccanicoDAO{


	protected MeccanicoDAOHibernateImpl(){
	}

	public Meccanico getMeccanico(Meccanico c) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		try {			
			c= (Meccanico) session.get(Meccanico.class,c.getIdmeccanico());
		} catch (HibernateException e) {

			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return c;
	}

	public boolean eliminaMeccanico(Meccanico c) {
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

	public int salvaMeccanico(Meccanico c) {
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

	public boolean aggiornaMeccanico(Meccanico c) {
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
	
	public List<Meccanico> getMeccanici() {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Meccanico> meccanici;
		try {
			
			meccanici = (List<Meccanico>) session.createQuery("from Meccanico").list();
			System.out.println(meccanici);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		
		return meccanici;
	}
}
