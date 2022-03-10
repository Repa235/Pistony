package it.unirc.pistony.Action.Cliente;

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
import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;

public class VisualizzaSchedaOrdine extends ActionSupport implements ClienteAware, Action {

	private static Logger logger = LogManager.getLogger("VisualizzaSchedaOrdine per cliente:");

	private static final long serialVersionUID = 1L;
	private List<Acquisto> acquistoById;
	private Cliente cliente;
	private int id;
	private List<AcquistoComponente> listacomponentiacquistati;
	Acquisto a1;


	public List<Acquisto> getAcquistoById() {
		return acquistoById;
	}
	public void setAcquistoById(List<Acquisto> acquistoById) {
		this.acquistoById = acquistoById;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
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


	public String execute() {

		AcquistoDAO adao = AcquistoDAOFactory.getDAO();
		acquistoById=adao.getSchedaAcquistoById(id);
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
		a1=acquistoById.get(0);
		return SUCCESS;
	}
}



