package it.unirc.pistony.pojo.Prenota;
public class PrenotaDAOFactory {

  private static PrenotaDAO dao = null;
  
  private PrenotaDAOFactory(){
  }
  
  public static synchronized PrenotaDAO getDAO() {
    if ( dao == null ) {
    	dao = new PrenotaDAOHibernateImpl();
    }
    return dao;
  } 
}