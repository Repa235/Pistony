package it.unirc.pistony.Action.Cliente;

import java.util.regex.Pattern;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Accountcliente.Accountcliente;
import it.unirc.pistony.pojo.Accountcliente.AccountclienteDAO;
import it.unirc.pistony.pojo.Accountcliente.AccountclienteDAOFactory;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;


public class ModificaCliente extends ActionSupport { 

	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger("Pagina ModificaCliente:");
	private Cliente c;
	private Accountcliente ac;
	private String conferma;



	public Cliente getC() {
		return c;
	}

	public void setC(Cliente c) {
		this.c = c;
	}
	
	public String getConferma() {
		return conferma;
	}

	public void setConferma(String conferma) {
		this.conferma = conferma;
	}

	public Accountcliente getAc() {
		return ac;
	}

	public void setAc(Accountcliente ac) {
		this.ac = ac;
	}

	public void validate() {
		if(c.getNome().isBlank()) {
			this.addFieldError("nome_vuoto", "non è possibile rimuovere il tuo nome");
		}
		if(c.getCognome().isBlank()) {
			this.addFieldError("cognome_vuoto", "non è possibile rimuovere il tuo cognome");
		}
		if(c.getCfPiva().isBlank()) {
			this.addFieldError("cfpiva_vuoto", "è importante per la fatturazione");
		}
		if(c.getTelefono().isBlank()) {
			this.addFieldError("telefono_vuoto", "ti terremo sempre aggiornato");
		}
		if(c.getIndirizzo().getVia().isBlank()||c.getIndirizzo().getCivico().isBlank()) {
			this.addFieldError("indirizzo_vuoto", "a chi spediremo i tuoi prodotti?");
		}
		
		
		Pattern pattern_email = Pattern.compile("[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}");
		boolean email_ok = pattern_email.matcher(ac.getEmail()).find();
		if(!email_ok) {
			this.addFieldError("email_no", "l'email inserita non è valida");			
		}
		if(ac.getEmail().isBlank()||ac.getPassword().isBlank()) {
			this.addFieldError("login_vuoto", "email e password ti permettono di effettuare il login");
		}
		Pattern pattern_password = Pattern.compile("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$");
		/* almeno: 1 lettera maiuscola,1lettera minuscola, carattere numerico, un carattere speciale, minimo 8 caratteri */
		boolean password_ok = pattern_password.matcher(ac.getPassword()).find();
		if(!password_ok) {
			this.addFieldError("password_debole", "la password deme contenere almeno 8 caratteri tra: lettere (maiuscole e minuscole), numeri e caratteri speciali");			
		}
		if(!ac.getPassword().equals(conferma)) {
			this.addFieldError("conferma_incoerente", "la password di conferma non corrisponde a quella originale");
		}
		
		
		
		
	}
	public String execute() {

		logger.info("Sto modificando il cliente");	
		//associamo l'id, questa operazione non sarebbe necessaria ma sicuramente abbiamo sbagliato qualcosa nel mapping
		ac.setIdcliente(c.getIdcliente());
		ac.setCliente(c);
		// chimaiamo il dao e aggiorniamo
		AccountclienteDAO acd = AccountclienteDAOFactory.getDAO();
		acd.aggiornaAccountcliente(ac);
		
		logger.info("Modifica completa");	

		return SUCCESS;
	}



}
