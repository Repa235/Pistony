package it.unirc.pistony.pojo.Intervento;
public class InterventoDAOFactory {

  private static InterventoDAO dao = null;
  
  private InterventoDAOFactory(){
  }
  
  public static synchronized InterventoDAO getDAO() {
    if ( dao == null ) {
    	dao = new InterventoDAOHibernateImpl();
    }
    return dao;
  } 
}