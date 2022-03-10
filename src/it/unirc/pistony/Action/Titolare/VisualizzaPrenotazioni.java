package it.unirc.pistony.Action.Titolare;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;


import it.unirc.pistony.pojo.Prenota.*;
import it.unirc.pistony.pojo.Intervento.*;

public class VisualizzaPrenotazioni  extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Prenota> prenotazioni;


	public List<Prenota> getPrenotazioni() {
		return prenotazioni;
	}
	public void setPrenotazioni(List<Prenota> prenotazioni) {
		this.prenotazioni = prenotazioni;
	}

	public String execute() {
		PrenotaDAO pred= PrenotaDAOFactory.getDAO();
		prenotazioni=pred.getAllPrenotazioni();
				return SUCCESS;
	}



}
