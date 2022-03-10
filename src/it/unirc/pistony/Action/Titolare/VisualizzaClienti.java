package it.unirc.pistony.Action.Titolare;
import it.unirc.pistony.pojo.Accountcliente.Accountcliente;
import it.unirc.pistony.pojo.Accountcliente.AccountclienteDAO;
import it.unirc.pistony.pojo.Accountcliente.AccountclienteDAOFactory;
import it.unirc.pistony.pojo.Cliente.*;

import java.util.LinkedList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class VisualizzaClienti extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Cliente> clienti;
	private List<Accountcliente> accountclienti;
	
	public List<Accountcliente> getAccountclienti() {
		return accountclienti;
	}
	public void setAccountclienti(List<Accountcliente> accountclienti) {
		this.accountclienti = accountclienti;
	}
	public List<Cliente> getClienti() {
		return clienti;
	}
	public void setClienti(List<Cliente> clienti) {
		this.clienti = clienti;
	}
	
	public String execute(){
		ClienteDAO cd= ClienteDAOFactory.getDAO();
		clienti = cd.getClienti();
		AccountclienteDAO acd = AccountclienteDAOFactory.getDAO();
		accountclienti = acd.getAccountclienti();		
		return SUCCESS;
	}
}
