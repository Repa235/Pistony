package it.unirc.pistony.pojo.Acquisto;

public class AcquistoDAOFactory {
	private static AcquistoDAO dao = null;
	  
	  private AcquistoDAOFactory(){
	  }
	  
	  public static synchronized AcquistoDAO getDAO() {
	    if ( dao == null ) {
	    	dao = new AcquistoDAOHibernateImpl();
	    }
	    return dao;
	  } 

}
