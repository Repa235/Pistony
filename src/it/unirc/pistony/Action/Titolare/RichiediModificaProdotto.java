package it.unirc.pistony.Action.Titolare;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;



public class RichiediModificaProdotto extends ActionSupport implements ModelDriven<Componente> {

	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger("richiedi modifica prodotto:");
	private Componente componente_damodificare;
	private List<Componente> componenti;
	private int id;



	@Override
	public Componente getModel() {
		return componente_damodificare;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Componente getComponente_damodificare() {
		return componente_damodificare;
	}

	public void setComponente_damodificare(Componente componente_damodificare) {
		this.componente_damodificare = componente_damodificare;
	}

	public List<Componente> getComponenti() {
		return componenti;
	}

	public void setComponenti(List<Componente> componenti) {
		this.componenti = componenti;
	}

	public void validate(){
		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		componenti =cd.getComponenti();
		if(cd.getComponente(componente_damodificare)==null) {
			this.addFieldError("compnotfound", this.getText("idprod.required"));
			logger.info("non è presente un componente con questo id");
		}
	}


	public String execute(){

		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		componenti =cd.getComponenti();
		componente_damodificare=cd.getComponente(componente_damodificare);
		id=componente_damodificare.getIdcomponente();
		
		logger.info(componente_damodificare.getNome());
		return SUCCESS;
	}



}
