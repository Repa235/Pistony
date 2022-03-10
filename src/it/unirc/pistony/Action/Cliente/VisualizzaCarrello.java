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

public class VisualizzaCarrello extends ActionSupport implements ServletResponseAware,SessionAware{
	private static final long serialVersionUID = 1L;
	private Map <String,Object> session;
	private static Logger logger = LogManager.getLogger("Visualizza carrello: ");
	Vector<ComponenteCarrello> carrello;
	
	
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
	

	public Vector<ComponenteCarrello> getCarrello() {
		return carrello;
	}
	public void setCarrello(Vector<ComponenteCarrello> carrello) {
		this.carrello = carrello;
	}
	
	@Override
	public String execute() throws Exception {
		carrello = (Vector<ComponenteCarrello>) session.get("carrello");
		 logger.info("adesso il carrello contiente: "+carrello);
		return SUCCESS;
	}
	
	

}
