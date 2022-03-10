package it.unirc.pistony.pojo.Componente;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.util.HibernateUtil;





public class ComponenteDAOHibernateImpl implements ComponenteDAO{

	
	protected ComponenteDAOHibernateImpl(){
	}

	public Componente getComponente(Componente c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {			
			c= (Componente) session.get(Componente.class,c.getIdcomponente());
		} catch (HibernateException e) {
			
			return null;
			
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return c;
	}

	public int salvaComponente(Componente c) {
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

	public boolean aggiornaComponente(Componente c) {
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
	
	public List<Componente> getComponenti() {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Componente> componenti;
		try {
			
			componenti = (List<Componente>) session.createQuery("from Componente").list();
			System.out.println(componenti);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		
		return componenti;
	}
	
	public boolean eliminaComponente(Componente c) {
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
	
	public List<Componente> getComponentiByCategoria(int categoria) {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Componente> componentibycat;
		try {
			Query q = session.createQuery("from Componente c where categoria=:cat");
			q.setParameter("cat", categoria);	
			componentibycat = (List<Componente>) q.list();
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		
		return componentibycat;
	}
}
