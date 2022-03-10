package it.unirc.pistony.pojo.Meccanico;
public class MeccanicoDAOFactory {

  private static MeccanicoDAO dao = null;
  
  private MeccanicoDAOFactory(){
  }
  
  public static synchronized MeccanicoDAO getDAO() {
    if ( dao == null ) {
    	dao = new MeccanicoDAOHibernateImpl();
    }
    return dao;
  } 
}