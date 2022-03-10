package it.unirc.pistony.pojo.Accountcliente;
public class AccountclienteDAOFactory {

  private static AccountclienteDAO dao = null;
  
  private AccountclienteDAOFactory(){
  }
  
  public static synchronized AccountclienteDAO getDAO() {
    if ( dao == null ) {
    	dao = new AccountclienteDAOHibernateImpl();
    }
    return dao;
  } 
}