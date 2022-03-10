package it.unirc.pistony.pojo.Accountcliente;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.util.HibernateUtil;








public class AccountclienteDAOHibernateImpl implements AccountclienteDAO{

	
	protected AccountclienteDAOHibernateImpl(){
	}

	public Accountcliente getAccountcliente(Accountcliente c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
			c= (Accountcliente) session.get(Accountcliente.class,c.getEmail());
			
		} catch (HibernateException e) {
			
			return null;
			
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		return c;
	}

	public boolean inserisciAccountcliente(Accountcliente c) {
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

	public boolean aggiornaAccountcliente(Accountcliente c) {
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
	
	public boolean eliminaAccountcliente(Accountcliente c) {
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
	public Accountcliente getAccountclienteByEmail(Accountcliente c) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Accountcliente> clienti=null;
		
		try {
			clienti=(List<Accountcliente>) session.createSQLQuery("Select * from accountcliente where email = :email").addEntity(Accountcliente.class).setParameter("email", c.getEmail()).list();
			transaction.commit();
			
		} catch (HibernateException e) {
			transaction.rollback();
			return null;
			
		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		if(clienti.size()==0)return null;
		return clienti.get(0);
	}
	
	public List<Accountcliente> getAccountclienti() {

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Accountcliente> Accountclienti;
		try {
			
			Accountclienti = (List<Accountcliente>) session.createQuery("from Accountcliente").list();
			System.out.println(Accountclienti);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			return null;

		} finally {
			if (session!=null) //spesso omesso
				session.close();
		}
		
		return Accountclienti;
	}


}
