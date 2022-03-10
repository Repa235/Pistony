package it.unirc.pistony.Action.Generali;

import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


import it.unirc.pistony.pojo.Accountcliente.Accountcliente;
import it.unirc.pistony.pojo.Accountcliente.AccountclienteDAO;
import it.unirc.pistony.pojo.Accountcliente.AccountclienteDAOFactory;
import it.unirc.pistony.pojo.Accounttitolare.Accounttitolare;
import it.unirc.pistony.pojo.Accounttitolare.AccounttitolareDAO;
import it.unirc.pistony.pojo.Accounttitolare.AccounttitolareDAOFactory;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;
import it.unirc.pistony.pojo.titolare.Titolare;
import it.unirc.pistony.pojo.titolare.TitolareDAO;
import it.unirc.pistony.pojo.titolare.TitolareDAOFactory;

public class ErroreLogin extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;

	private static Logger logger = LogManager.getLogger("Login");
	private String email;
	private String password;
	private Map<String,Object> session; 
	Accountcliente accountcliente;
	Accounttitolare accounttitolare;

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Accountcliente getAccountcliente() {
		return accountcliente;
	}
	public void setAccountcliente(Accountcliente accountcliente) {
		this.accountcliente = accountcliente;
	}
	public Accounttitolare getAccounttitolare() {
		return accounttitolare;
	}
	public void setAccounttitolare(Accounttitolare accounttitolare) {
		this.accounttitolare = accounttitolare;
	}

	public String execute(){
		logger.info("Avvio l'execute ");
		logger.info("Email inserita: " + email);
		logger.info("PW inserita: " + password);

		Accounttitolare at = new Accounttitolare();
		at.setEmail(email);
		AccounttitolareDAO atd = AccounttitolareDAOFactory.getDAO();	
		at=atd.getAcc_titolareByEmail(at);


		Accountcliente ac = new Accountcliente();
		ac.setEmail(email);
		AccountclienteDAO acd = AccountclienteDAOFactory.getDAO();
		ac=acd.getAccountclienteByEmail(ac);

		logger.info("dao apposto");

		if(at!=null){
			if(at.getPassword().equals(password)){
				logger.info("Login del titolare riuscito ");
				
				Titolare t = new Titolare();
				TitolareDAO td = TitolareDAOFactory.getDAO();
				t.setIdtitolare(at.getIdtitolare());
				t=td.getTitolare(t);
				
				
				session.put("utente", t);
				logger.info("Login dell'utente: "+at.getEmail()); 
				return "areaTitolare";
			}
			else{
				this.addFieldError("email","credenziali errate");
				return INPUT;
			}
		}
		else if(ac!=null) {
			if(ac.getPassword().equals(password)){
				logger.info("Login del cliente riuscito "); 
				
				Cliente c = new Cliente();
				ClienteDAO cd = ClienteDAOFactory.getDAO();
				c.setIdcliente(ac.getIdcliente());
				c=cd.getCliente(c);
				
	
				session.put("utente", c);
				logger.info("Login dell'utente: "+ac.getEmail()); 
				return "areaCliente";
			}
			else{
				this.addFieldError("erroreAccesso","Credenziali errate");
				return "errore";
			}
		}
		else {
			this.addFieldError("erroreAccesso","Credenziali non presenti nei nostri database");
			return "errore";
		}
	}
}

