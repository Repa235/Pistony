package it.unirc.pistony.Action.Cliente;

import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Cliente.ComponenteCarrello;
import it.unirc.pistony.pojo.Componente.*;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;

public class AggiungiAlCarrello extends ActionSupport implements ServletResponseAware,SessionAware{
	private static final long serialVersionUID = 1L;
	private Map <String,Object> session;
	private int id,richiesta;
	private static Logger logger = LogManager.getLogger("Aggiungi al carrello: ");

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRichiesta() {
		return richiesta;
	}
	public void setRichiesta(int richiesta) {
		this.richiesta = richiesta;
	}
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
	}


	@Override
	public void validate() {
		// TODO Auto-generated method stub
		
		// validator per verificare che un prodotto non sia gia presente nel carrello
				Componente c = new Componente();
				c.setIdcomponente(id);
				ComponenteDAO cd = ComponenteDAOFactory.getDAO();
				c=cd.getComponente(c);
				ComponenteCarrello prodottoToCarrello = new ComponenteCarrello(c, richiesta);
				Vector<ComponenteCarrello> carrello = (Vector<ComponenteCarrello>) session.get("carrello");
				if(carrello!=null) {
					for(ComponenteCarrello comcar : carrello ) {
						if(comcar.getC().getIdcomponente()==prodottoToCarrello.getC().getIdcomponente()) {
							comcar.setQuantRichiesta(comcar.getQuantRichiesta()+prodottoToCarrello.getQuantRichiesta());
							if(comcar.getQuantRichiesta()>c.getQuantDisponibile()) {
								comcar.setQuantRichiesta(c.getQuantDisponibile());
								this.addFieldError("troppo", "Hai ordinato pi� merce di quella disponibile");
							}
							this.addFieldError("giaPresente", "Questo prodotto � gi� presente nel carrello");
						}
					}
				}
		
	}
	@Override
	public String execute() throws Exception {

		Componente c = new Componente();
		c.setIdcomponente(id);
		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		c=cd.getComponente(c);
		ComponenteCarrello prodottoToCarrello = new ComponenteCarrello(c, richiesta);
		Vector<ComponenteCarrello> carrello = (Vector<ComponenteCarrello>) session.get("carrello");
		if(carrello==null) {
			//Se il carrello non esiste allora lo crea
			carrello = new Vector<ComponenteCarrello>();
			carrello.add(prodottoToCarrello);
			logger.info("Carrello creato e prodotto aggiunto");
		}
		else {
			//Se il carrello esiste allora aggiunge il prodotto al carrello
				carrello.add(prodottoToCarrello);
				logger.info("prodotto aggiunto");
		}		
		session.put("carrello", carrello);	
		logger.info("adesso il carrello contiente: "+carrello);
		return SUCCESS;
	}
}
