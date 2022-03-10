package it.unirc.pistony.Action.Cliente;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Acquisto.Acquisto;
import it.unirc.pistony.pojo.Acquisto.AcquistoDAO;
import it.unirc.pistony.pojo.Acquisto.AcquistoDAOFactory;
import it.unirc.pistony.pojo.Acquisto.AcquistoId;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteAware;
import it.unirc.pistony.pojo.Cliente.ComponenteCarrello;
import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;

public class SuccessoAcquisto extends ActionSupport implements ServletResponseAware,SessionAware,ClienteAware, Action{
	private static final long serialVersionUID = 1L;
	private Map <String,Object> session;
	private static Logger logger = LogManager.getLogger("Completa acquisto: ");

	private Cliente cliente;

	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub

	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Vector<ComponenteCarrello> carrello = (Vector<ComponenteCarrello>) session.get("carrello");
		Acquisto acq = new Acquisto();
		AcquistoId aid = new AcquistoId();
		AcquistoDAO adao = AcquistoDAOFactory.getDAO();
		Acquisto last = adao.getLastAcquisto();
		int idacq=0;
		if (last==null) {
			idacq = 1;	
			logger.info(idacq);		
			aid.setIdacquisto(idacq);
			aid.setIdcliente(cliente.getIdcliente());
			ComponenteDAO cd = ComponenteDAOFactory.getDAO();
			Componente c = new Componente();
			Date d = new Date();
			acq.setData(d);
			
			for( ComponenteCarrello cc : carrello ) {
				aid.setIdcomponente(cc.getC().getIdcomponente());
				acq.setId(aid);
				acq.setQuantAcquistata(cc.getQuantRichiesta());
				adao.inserisciAcquisto(acq);
				c=cc.getC();
				int newQuant = c.getQuantDisponibile()-cc.getQuantRichiesta();
				c.setQuantDisponibile(newQuant);
				cd.aggiornaComponente(c);
			}
			carrello.clear();
			session.put("carrello", carrello);
		}
		
		else {
			
		idacq = last.getId().getIdacquisto()+1;
		logger.info(idacq);		
		aid.setIdacquisto(idacq);
		aid.setIdcliente(cliente.getIdcliente());
		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		Componente c = new Componente();
		Date d = new Date();
		acq.setData(d);

		for( ComponenteCarrello cc : carrello ) {
			aid.setIdcomponente(cc.getC().getIdcomponente());
			acq.setId(aid);
			acq.setQuantAcquistata(cc.getQuantRichiesta());
			adao.inserisciAcquisto(acq);
			c=cc.getC();
			int newQuant = c.getQuantDisponibile()-cc.getQuantRichiesta();
			c.setQuantDisponibile(newQuant);
			cd.aggiornaComponente(c);

		}

		carrello.clear();
		session.put("carrello", carrello);
		
		}

		return SUCCESS;
	}

}


