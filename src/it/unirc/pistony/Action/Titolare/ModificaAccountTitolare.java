package it.unirc.pistony.Action.Titolare;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Accounttitolare.Accounttitolare;
import it.unirc.pistony.pojo.Accounttitolare.AccounttitolareDAO;
import it.unirc.pistony.pojo.Accounttitolare.AccounttitolareDAOFactory;
import it.unirc.pistony.pojo.titolare.Titolare;

public class ModificaAccountTitolare extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger("Modifica del titolare:");
	private Accounttitolare accounttitolare;
	private String conferma;
	private Titolare titolare;

	public Titolare getTitolare() {
		return titolare;
	}

	public void setTitolare(Titolare titolare) {
		this.titolare = titolare;
	}

	public Accounttitolare getAccounttitolare() {
		return accounttitolare;
	}

	public void setAccounttitolare(Accounttitolare accounttitolare) {
		this.accounttitolare = accounttitolare;
	}

	public String getConferma() {
		return conferma;
	}

	public void setConferma(String conferma) {
		this.conferma = conferma;
	}

	public void validate() {
		if(!accounttitolare.getPassword().equals(conferma)) {
			logger.info("conferma incoerente");
			this.addFieldError("conferma_incoerente","non corrisponde alla password inserita sopra");
		}
	}

	public String execute() {

		titolare.setIdtitolare(1);
		accounttitolare.setIdtitolare(1);
		AccounttitolareDAO adao= AccounttitolareDAOFactory.getDAO();
		accounttitolare.setTitolare(titolare);
		adao.aggiornaAccounttitolare(accounttitolare);

		return SUCCESS;

	}
}
