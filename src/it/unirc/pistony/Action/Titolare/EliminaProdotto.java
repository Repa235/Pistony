package it.unirc.pistony.Action.Titolare;


import java.io.IOException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Acquisto.Acquisto;
import it.unirc.pistony.pojo.Acquisto.AcquistoDAO;
import it.unirc.pistony.pojo.Acquisto.AcquistoDAOFactory;
import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;


public class EliminaProdotto  extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger("EliminaProdotto - Action: ");

	private int idComponente;

	public int getIdComponente() {
		return idComponente;
	}

	public void setIdComponente(int idComponente) {
		this.idComponente = idComponente;
	}

	public String execute() throws Exception {

		AcquistoDAO acquistoDao = AcquistoDAOFactory.getDAO();
		List<Acquisto> listaDegliAcquisti = acquistoDao.getAcquisti();

		ComponenteDAO cdao = ComponenteDAOFactory.getDAO();
		Componente c =new Componente();
		c.setIdcomponente(idComponente);
		c=cdao.getComponente(c);
		for(Acquisto a : listaDegliAcquisti) {
			if(a.getId().getIdcomponente()==c.getIdcomponente()) {
				throw new Exception("Stai cercando di eliminare un prodotto mensionato in almeno un ordine");
			}
		}


		logger.info("Hai selezionato il componente: "  + "ID:" + c.getIdcomponente() + " " + c.getNome() + "-" + c.getMarca() );

		cdao.eliminaComponente(c);
		return SUCCESS;

	}
}





