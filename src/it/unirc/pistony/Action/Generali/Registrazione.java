package it.unirc.pistony.Action.Generali;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Accountcliente.Accountcliente;
import it.unirc.pistony.pojo.Accountcliente.AccountclienteDAO;
import it.unirc.pistony.pojo.Accountcliente.AccountclienteDAOFactory;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;
import it.unirc.pistony.pojo.Cliente.Indirizzo;


public class Registrazione extends ActionSupport {

	private static final long serialVersionUID = 1L;


	private static Logger logger = LogManager.getLogger("Registrazione");

	private Cliente cliente; 
	private Accountcliente accountcliente; 
	private String confermaPassword;
	private Indirizzo indirizzo;

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Accountcliente getAccountcliente() {
		return accountcliente;
	}

	public void setAccountcliente(Accountcliente accountcliente) {
		this.accountcliente = accountcliente;
	}

	public String getConfermaPassword() {
		return confermaPassword;
	}

	public void setConfermaPassword(String confermaPassword) {
		this.confermaPassword = confermaPassword;
	}

	public Indirizzo getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(Indirizzo indirizzo) {
		this.indirizzo = indirizzo;
	}


	@Override
	public void validate() {

		if(!accountcliente.getPassword().equals(confermaPassword)) {
			this.addFieldError("conferma_incoerente", "la password di conferma non corrisponde a quella originale");
		}
		AccountclienteDAO ac = AccountclienteDAOFactory.getDAO();
		Accountcliente checkpw=ac.getAccountclienteByEmail(accountcliente);
		if(checkpw!=null) {
			this.addFieldError("email_presente", "l'e-mail inserita è già presente nei nostri sistemi");
		}	
	}


	public String execute(){
		logger.info("Sono nell'execute");
		AccountclienteDAO ac = AccountclienteDAOFactory.getDAO();

		ClienteDAO cd = ClienteDAOFactory.getDAO();
		logger.info("i dao sono ok");
		cliente.setIndirizzo(indirizzo);

		accountcliente.setCliente(cliente);
		//cd.inserisciCliente(cliente);
		ac.inserisciAccountcliente(accountcliente);
		logger.info("ho finito");

		return SUCCESS;
	}



}