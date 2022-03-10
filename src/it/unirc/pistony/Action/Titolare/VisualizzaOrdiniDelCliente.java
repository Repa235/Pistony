package it.unirc.pistony.Action.Titolare;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;
import it.unirc.pistony.pojo.Acquisto.*;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;
public class VisualizzaOrdiniDelCliente extends ActionSupport {

	private static Logger logger = LogManager.getLogger("VisualizzaOrdinidelCliente per Titolare:");

	private static final long serialVersionUID = 1L;
	private List<Acquisto> OrdiniDelCliente;
	private Cliente c;
	private int id;

	public List<Acquisto> getOrdiniDelCliente() {
		return OrdiniDelCliente;
	}

	public void setOrdiniDelCliente(List<Acquisto> ordiniDelCliente) {
		OrdiniDelCliente = ordiniDelCliente;
	}

	public Cliente getC() {
		return c;
	}

	public void setC(Cliente c) {
		this.c = c;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String execute() {
		logger.info("Taccammu");
		AcquistoDAO acd = AcquistoDAOFactory.getDAO();
		OrdiniDelCliente=acd.getAcquistidelCliente(c.getIdcliente());
		return SUCCESS;
	}
}



