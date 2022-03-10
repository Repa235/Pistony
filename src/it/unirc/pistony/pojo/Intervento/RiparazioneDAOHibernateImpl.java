package it.unirc.pistony.pojo.Intervento;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unirc.pistony.util.HibernateUtil;





public class RiparazioneDAOHibernateImpl implements RiparazioneDAO{


	protected RiparazioneDAOHibernateImpl(){
	}

	public Riparazione getRiparazione(Riparazione c) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		try {			
			c= (Riparazione) session.get(Riparazione.class,c.getIdintervento());
		} catch (HibernateException e) {

			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return c;
	}

	public int salvaRiparazione(Riparazione c) {
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
	
	public List<Riparazione> getAllRiparazioni() {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Riparazione> riparazioni;
		try {

			riparazioni = (List<Riparazione>) session.createQuery("from Riparazione").list();
			System.out.println(riparazioni);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}

		return riparazioni;
	}


}
