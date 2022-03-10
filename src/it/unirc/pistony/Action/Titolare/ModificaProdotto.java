package it.unirc.pistony.Action.Titolare;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;

public class ModificaProdotto extends ActionSupport {

	private static Logger logger = LogManager.getLogger("Modifica prodotto:");
	private static final long serialVersionUID = 1L;
	private Componente c;
	private List<Componente> componenti;

	public List<Componente> getComponenti() {
		return componenti;
	}

	public void setComponenti(List<Componente> componenti) {
		this.componenti = componenti;
	}

	public Componente getC() {
		return c;
	}

	public void setC(Componente c) {
		this.c = c;
	}
	
	public void validate() {
		
		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		componenti =cd.getComponenti();
		
		if(getC().getNome().isBlank()) {
			this.addFieldError("compnom", this.getText("nome.required"));
		}
		if(getC().getMarca().isBlank()) {
			this.addFieldError("compmarc", this.getText("marca.required"));
		}
//		if(getC().getPrezzo()==0) {
//
//			logger.info("Prezzo = " + getC().getPrezzo());
//			this.addFieldError("compprezz", this.getText("prezzo.required"));
//		}
		if(getC().getQuantDisponibile()<=0||getC().getQuantDisponibile()==null) {
			this.addFieldError("compmarc", this.getText("quant.required"));
		}
		if(getC().getCategoria()==0){
			this.addFieldError("compcat", this.getText("categoria.required"));
		}
	}
	
	public String execute() {
		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		cd.aggiornaComponente(c);
		logger.info("Ho modificato il prodotto");
		return SUCCESS;
	}
}
