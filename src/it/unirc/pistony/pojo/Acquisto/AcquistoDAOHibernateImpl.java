package it.unirc.pistony.pojo.Acquisto;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.util.HibernateUtil;



public class AcquistoDAOHibernateImpl implements AcquistoDAO {

	protected AcquistoDAOHibernateImpl(){
	}

	public Acquisto getAcquisto(Acquisto p) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		try {			
			p= (Acquisto) session.get(Acquisto.class,p.getId());
		} catch (HibernateException ex) {

			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return p;
	}



	public boolean inserisciAcquisto(Acquisto c) {
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

	public List<Acquisto> getAcquisti() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Acquisto> prodotti=null;
		try {
			prodotti = (List<Acquisto>) session.createQuery("from Acquisto").list();
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}

		return prodotti;
	}


	public Acquisto getLastAcquisto() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		Acquisto a = null; 
		try {
			a = (Acquisto) session.createQuery("from Acquisto order by idacquisto desc").setMaxResults(1).uniqueResult();
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return a;
	}

	public List<Acquisto> getSchedaAcquistoById(int id) {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Acquisto> abi;
		try {
			Query q = session.createQuery("from Acquisto a where a.id.idacquisto=:id");
			q.setParameter("id", id);	
			abi = (List<Acquisto>) q.list();
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}

		return abi;
	}

	public List<Acquisto> getAcquistidelCliente(int id) {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Acquisto> abi;
		try {
			Query q = session.createQuery("from Acquisto a where a.id.idcliente=:id group by a.id.idacquisto");
			q.setParameter("id", id);	
			abi = (List<Acquisto>) q.list();
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}

		return abi;
	}

	public List<Acquisto> getAcquistiDinstinct() {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Acquisto> abi;
		try {
			Query q = session.createQuery("from Acquisto a group by a.id.idacquisto");
			abi = (List<Acquisto>) q.list();
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}

		return abi;
	}


}
