package it.unirc.pistony.Action.Titolare;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.titolare.Titolare;
import it.unirc.pistony.pojo.titolare.TitolareDAO;
import it.unirc.pistony.pojo.titolare.TitolareDAOFactory;

public class RichiediModificaTitolare extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private Titolare titolare;
	

	public Titolare getTitolare() {
		return titolare;
	}
	
	public void setTitolare(Titolare titolare) {
		this.titolare = titolare;
	}

	public String execute() {	
//		titolare.setIdtitolare(1);	
		TitolareDAO td = TitolareDAOFactory.getDAO();	
		titolare=td.getTitolare(titolare);
		
		return SUCCESS;		
	}
}
