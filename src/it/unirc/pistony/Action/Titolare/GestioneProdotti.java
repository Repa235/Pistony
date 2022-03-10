package it.unirc.pistony.Action.Titolare;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;


public class GestioneProdotti extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Componente> componenti;
	
	public List<Componente> getComponenti() {
		return componenti;
	}
	public void setComponenti(List<Componente> componenti) {
		this.componenti = componenti;
	}
	public String execute(){
		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		componenti =cd.getComponenti();
		return SUCCESS;
	}
}