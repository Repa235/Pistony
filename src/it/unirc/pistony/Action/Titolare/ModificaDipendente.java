package it.unirc.pistony.Action.Titolare;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Meccanico.Meccanico;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAO;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAOFactory;

public class ModificaDipendente extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger("Modifica dipendente:");
	private Meccanico meccanico;
	
	public Meccanico getMeccanico() {
		return meccanico;
	}
	public void setMeccanico(Meccanico meccanico) {
		this.meccanico = meccanico;
	}
	
	public String execute() {
		logger.info( meccanico.toString());
		MeccanicoDAO mecd = MeccanicoDAOFactory.getDAO();
		mecd.aggiornaMeccanico(meccanico);
		logger.info( meccanico.toString());
		logger.info("Nome meccanico: " + meccanico.getNome());
		return SUCCESS;
	}
}
