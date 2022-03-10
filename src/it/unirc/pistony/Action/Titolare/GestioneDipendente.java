package it.unirc.pistony.Action.Titolare;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Meccanico.Meccanico;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAO;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAOFactory;


public class GestioneDipendente extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private List<Meccanico> meccanici;
	
		
	public List<Meccanico> getMeccanici() {
		return meccanici;
	}


	public void setMeccanici(List<Meccanico> meccanici) {
		this.meccanici = meccanici;
	}


	public String execute(){
		MeccanicoDAO mdao= MeccanicoDAOFactory.getDAO();
		meccanici = mdao.getMeccanici();
		return SUCCESS;
	}


	
}