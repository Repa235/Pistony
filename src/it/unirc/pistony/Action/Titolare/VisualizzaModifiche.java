package it.unirc.pistony.Action.Titolare;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Intervento.Intervento;
import it.unirc.pistony.pojo.Intervento.InterventoDAO;
import it.unirc.pistony.pojo.Intervento.InterventoDAOFactory;
import it.unirc.pistony.pojo.Intervento.Modifica;
import it.unirc.pistony.pojo.Intervento.ModificaDAO;
import it.unirc.pistony.pojo.Intervento.ModificaDAOFactory;
import it.unirc.pistony.pojo.Prenota.*;
public class VisualizzaModifiche  extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Modifica> modifiche;
	
	public List<Modifica> getModifiche() {
		return modifiche;
	}
	public void setModifica(List<Modifica> modifiche) {
		this.modifiche = modifiche;
	}
	
	public String execute() {
		ModificaDAO mod= ModificaDAOFactory.getDAO();	
		modifiche=mod.getAllModifiche();	
	return SUCCESS;
	}
}
