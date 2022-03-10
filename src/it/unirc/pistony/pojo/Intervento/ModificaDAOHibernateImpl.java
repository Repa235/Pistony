package it.unirc.pistony.pojo.Intervento;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unirc.pistony.util.HibernateUtil;





public class ModificaDAOHibernateImpl implements ModificaDAO{


	protected ModificaDAOHibernateImpl(){
	}

	public Modifica getModifica(Modifica c) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		try {			
			c= (Modifica) session.get(Modifica.class,c.getIdintervento());
		} catch (HibernateException e) {

			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return c;
	}

	public int salvaModifica(Modifica c) {
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
	public List<Modifica> getAllModifiche() {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Modifica> modifiche;
		try {

			modifiche = (List<Modifica>) session.createQuery("from Modifica").list();
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

}
