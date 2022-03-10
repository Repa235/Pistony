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


public class ShopByCategoria extends ActionSupport implements ServletResponseAware,SessionAware {

	private static final long serialVersionUID = 1L;
	private List<Componente> componentiByCategoria;
	private Map <String,Object> session;
	private static Logger logger = LogManager.getLogger("Shop categoria: ");
	Vector<ComponenteCarrello> carrello;
	private int categoria;

	public int getCategoria() {
		return categoria;
	}

	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}

	public List<Componente> getComponentiByCategoria() {
		return componentiByCategoria;
	}

	public void setComponentiByCategoria(List<Componente> componentiByCategoria) {
		this.componentiByCategoria = componentiByCategoria;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Vector<ComponenteCarrello> getCarrello() {
		return carrello;
	}

	public void setCarrello(Vector<ComponenteCarrello> carrello) {
		this.carrello = carrello;
	}

	public String execute(){
	
		
		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		componentiByCategoria =cd.getComponentiByCategoria(categoria);
		carrello = (Vector<ComponenteCarrello>) session.get("carrello");
		
		return SUCCESS;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		
	}

}