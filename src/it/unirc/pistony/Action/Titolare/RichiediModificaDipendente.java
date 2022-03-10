package it.unirc.pistony.Action.Titolare;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import it.unirc.pistony.pojo.Meccanico.Meccanico;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAO;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAOFactory;

public class RichiediModificaDipendente extends ActionSupport implements ModelDriven<Meccanico> {
	
	private static final long serialVersionUID = 1L;
	Meccanico m;
	
	private List<Meccanico> meccanici;
	
	@Override
	public Meccanico getModel() {
		// TODO Auto-generated method stub
		return m;
	}

	public Meccanico getM() {
		return m;
	}

	public void setM(Meccanico m) {
		this.m = m;
	}

	public List<Meccanico> getMeccanici() {
		return meccanici;
	}

	public void setMeccanici(List<Meccanico> meccanici) {
		this.meccanici = meccanici;
	}
	
	public void validate() {
		MeccanicoDAO mdao = MeccanicoDAOFactory.getDAO();
		if(mdao.getMeccanico(m)==null) {
			this.addFieldError("idnotfound","l'id inserito non corrisponde a nessuno dei tuoi dipendenti");
		}
	}
	
	public String execute() {	
		MeccanicoDAO mecdao = MeccanicoDAOFactory.getDAO();
		meccanici = mecdao.getMeccanici();
	
		m=mecdao.getMeccanico(m);
	
		return SUCCESS;
		
	}
	
}
