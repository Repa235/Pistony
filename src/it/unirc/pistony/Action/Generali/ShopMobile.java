package it.unirc.pistony.Action.Generali;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Cliente.ComponenteCarrello;
import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;


public class ShopMobile extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Componente> componenti;
	private static Logger logger = LogManager.getLogger("Shop: ");
	
	public List<Componente> getComponenti() {
		return componenti;
	}
	public void setComponenti(List<Componente> componenti) {
		this.componenti = componenti;
	}
	@Override
	public String execute() throws Exception {

		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		componenti =cd.getComponenti();
		
		return SUCCESS;
	}

}