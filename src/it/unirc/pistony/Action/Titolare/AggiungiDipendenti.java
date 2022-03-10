package it.unirc.pistony.Action.Titolare;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Meccanico.Meccanico;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAO;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAOFactory;

public class AggiungiDipendenti extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	private static Logger logger = LogManager.getLogger("Inserisci dipendente:");
	
	private Meccanico meccanico;
	private List<Meccanico> meccanici;


	public List<Meccanico> getMeccanici() {
		return meccanici;
	}

	public void setMeccanici(List<Meccanico> meccanici) {
		this.meccanici = meccanici;
	}

	public Meccanico getMeccanico() {
		return meccanico;
	}

	public void setMeccanico(Meccanico meccanico) {
		this.meccanico = meccanico;
	}
	

	
	public String execute() {
		
		MeccanicoDAO mdao = MeccanicoDAOFactory.getDAO();
		mdao.salvaMeccanico(meccanico);
		
		meccanici = mdao.getMeccanici();
		
		return SUCCESS;
			
	}

}
