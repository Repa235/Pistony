package it.unirc.pistony.Action.Cliente;

import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;
import it.unirc.pistony.pojo.Prenota.Prenota;
import it.unirc.pistony.pojo.Prenota.PrenotaDAO;
import it.unirc.pistony.pojo.Prenota.PrenotaDAOFactory;

public class Inserisciprenota extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger("Inserisci una prenotazione: ");
	private Cliente cliente;
	private String descrizione;



	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	
	
	@Override
	public void validate() {
		// TODO Auto-generated method stub		
		if(descrizione.isBlank()) {
			this.addFieldError("descrizione", "Descrivi il tuo problema");	
		}
		super.validate();
	}
	
	public String execute(){

		ClienteDAO cd = ClienteDAOFactory.getDAO();
		cliente=cd.getCliente(cliente);
		Prenota p = new Prenota(cliente,descrizione);
		PrenotaDAO pd = PrenotaDAOFactory.getDAO();
		pd.salvaPrenota(p);
		return SUCCESS;
	}
}
