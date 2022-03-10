package it.unirc.pistony.pojo.Accounttitolare;
public class AccounttitolareDAOFactory {

  private static AccounttitolareDAO dao = null;
  
  private AccounttitolareDAOFactory(){
  }
  
  public static synchronized AccounttitolareDAO getDAO() {
    if ( dao == null ) {
    	dao = new AccounttitolareDAOHibernateImpl();
    }
    return dao;
  } 
}