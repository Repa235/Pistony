package it.unirc.pistony.pojo.Intervento;


public class RiparazioneDAOFactory {

  private static RiparazioneDAO dao = null;
  
  private RiparazioneDAOFactory(){
  }
  
  public static synchronized RiparazioneDAO getDAO() {
    if ( dao == null ) {
    	dao = new RiparazioneDAOHibernateImpl();
    }
    return dao;
  } 
}