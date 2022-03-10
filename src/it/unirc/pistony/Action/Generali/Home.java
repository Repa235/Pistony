package it.unirc.pistony.Action.Generali;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;


public class Home extends ActionSupport implements ServletResponseAware,SessionAware {

	private static final long serialVersionUID = 1L;
	private Componente c;
	
	private Map <String,Object> session;
	
	private String nome_t;
	private String cognome_t;
	private String data_t;
	private String random_t;
	
	public Componente getC() {
		return c;
	}

	public void setC(Componente c) {
		this.c = c;
	}

	public String getNome_t() {
		return nome_t;
	}

	public void setNome_t(String nome_t) {
		this.nome_t = nome_t;
	}

	public String getCognome_t() {
		return cognome_t;
	}

	public void setCognome_t(String cognome_t) {
		this.cognome_t = cognome_t;
	}

	public String getData_t() {
		return data_t;
	}

	public void setData_t(String data_t) {
		this.data_t = data_t;
	}

	public String getRandom_t() {
		return random_t;
	}

	public void setRandom_t(String random_t) {
		this.random_t = random_t;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String execute(){
		
		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		
		List<Componente> co = cd.getComponenti();
		
		Componente c1 = new Componente();
		
		Collections.shuffle(co);
		
		c1=co.get(0);
		
		c=c1;
				
		nome_t=(String) session.get("nome_t");
		cognome_t=(String) session.get("cognome_t");
		data_t=(String) session.get("data_t");
		random_t=(String) session.get("random_t");
		System.out.println(random_t);
		return SUCCESS;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		
	}


	
}