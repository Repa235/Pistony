package it.unirc.pistony.Action.Titolare;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Acquisto.*;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;

public class VisualizzaOrdini  extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Acquisto> listaAcquisti;
	private List<Cliente> listaClienti;

	public List<Cliente> getListaClienti() {
		return listaClienti;
	}

	public void setListaClienti(List<Cliente> listaClienti) {
		this.listaClienti = listaClienti;
	}

	public List<Acquisto> getListaAcquisti() {
		return listaAcquisti;
	}

	public void setListaAcquisti(List<Acquisto> listaAcquisti) {
		this.listaAcquisti = listaAcquisti;
	}

	public String execute(){		
		AcquistoDAO acd= AcquistoDAOFactory.getDAO();
		listaAcquisti= acd.getAcquistiDinstinct();
		ClienteDAO cd=ClienteDAOFactory.getDAO();
		listaClienti= cd.getClienti();
		return SUCCESS;
	}
}
