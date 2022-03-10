package it.unirc.pistony.Action.Titolare;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Intervento.Intervento;
import it.unirc.pistony.pojo.Intervento.InterventoDAO;
import it.unirc.pistony.pojo.Intervento.InterventoDAOFactory;
import it.unirc.pistony.pojo.Intervento.*;
import it.unirc.pistony.pojo.Prenota.*;
public class VisualizzaRiparazioni  extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Riparazione> riparazioni;

	public List<Riparazione> getRiparazioni() {
		return riparazioni;
	}

	public void setRiparazioni(List<Riparazione> riparazioni) {
		this.riparazioni = riparazioni;
	}


	public String execute() {
		RiparazioneDAO intd= RiparazioneDAOFactory.getDAO();
		riparazioni=intd.getAllRiparazioni();
	return SUCCESS;
	}
}
