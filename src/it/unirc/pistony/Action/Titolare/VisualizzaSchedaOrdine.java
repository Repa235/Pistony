package it.unirc.pistony.Action.Titolare;

import java.util.List;
import java.util.Vector;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import it.unirc.pistony.pojo.Acquisto.*;
import it.unirc.pistony.pojo.Cliente.AcquistoComponente;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteAware;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;
import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;

public class VisualizzaSchedaOrdine extends ActionSupport {

	private static Logger logger = LogManager.getLogger("VisualizzaSchedaOrdine per titolare:");

	private static final long serialVersionUID = 1L;
	private List<Acquisto> acquistoById;
	private int id;
	private List<AcquistoComponente> listacomponentiacquistati;
	private Acquisto a1;
	private List<Cliente> listaDeiClienti;
	
	
	
	public List<Acquisto> getAcquistoById() {
		return acquistoById;
	}



	public void setAcquistoById(List<Acquisto> acquistoById) {
		this.acquistoById = acquistoById;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<AcquistoComponente> getListacomponentiacquistati() {
		return listacomponentiacquistati;
	}

	public void setListacomponentiacquistati(List<AcquistoComponente> listacomponentiacquistati) {
		this.listacomponentiacquistati = listacomponentiacquistati;
	}

	public Acquisto getA1() {
		return a1;
	}

	public void setA1(Acquisto a1) {
		this.a1 = a1;
	}

	public List<Cliente> getListaDeiClienti() {
		return listaDeiClienti;
	}

	public void setListaDeiClienti(List<Cliente> listaDeiClienti) {
		this.listaDeiClienti = listaDeiClienti;
	}

	public String execute() {

		AcquistoDAO adao = AcquistoDAOFactory.getDAO();
		acquistoById=adao.getSchedaAcquistoById(id);
		a1=acquistoById.get(0);
		ClienteDAO cd=ClienteDAOFactory.getDAO();
		listaDeiClienti= cd.getClienti();
		ComponenteDAO cdao = ComponenteDAOFactory.getDAO();
		List<Componente> listacomponenti = cdao.getComponenti();
		AcquistoComponente acqcom = new AcquistoComponente();
		Vector<AcquistoComponente> listausiliaria= new Vector<AcquistoComponente>() ;
		for(Acquisto a : acquistoById) {
			for(Componente c : listacomponenti) {
				if(a.getId().getIdcomponente()==c.getIdcomponente()) {
					acqcom.setAcquisto(a);
					acqcom.setComponente(c);
					listausiliaria.add(acqcom);
				}
			}
		}
		listacomponentiacquistati=listausiliaria;
		return SUCCESS;
	}
}



