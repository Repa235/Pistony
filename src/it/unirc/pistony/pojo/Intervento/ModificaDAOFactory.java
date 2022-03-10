package it.unirc.pistony.pojo.Intervento;


public class ModificaDAOFactory {

  private static ModificaDAO dao = null;
  
  private ModificaDAOFactory(){
  }
  
  public static synchronized ModificaDAO getDAO() {
    if ( dao == null ) {
    	dao = new ModificaDAOHibernateImpl();
    }
    return dao;
  } 
}