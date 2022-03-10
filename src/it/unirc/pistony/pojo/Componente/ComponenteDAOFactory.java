package it.unirc.pistony.pojo.Componente;
public class ComponenteDAOFactory {

  private static ComponenteDAO dao = null;
  
  private ComponenteDAOFactory(){
  }
  
  public static synchronized ComponenteDAO getDAO() {
    if ( dao == null ) {
    	dao = new ComponenteDAOHibernateImpl();
    }
    return dao;
  } 
}