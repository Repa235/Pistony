package it.unirc.pistony.Action.Cliente;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteAware;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;
import it.unirc.pistony.pojo.Acquisto.*;

public class ProfiloCliente  extends ActionSupport implements ClienteAware, Action {

	private static final long serialVersionUID = 1L;
	private Cliente cliente;
	private List<Acquisto> listaAcquistiCliente;

	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public List<Acquisto> getListaAcquistiCliente() {
		return listaAcquistiCliente;
	}
	public void setListaAcquistiCliente(List<Acquisto> listaAcquistiCliente) {
		this.listaAcquistiCliente = listaAcquistiCliente;
	}
	public String execute(){	
		
		ClienteDAO cd = ClienteDAOFactory.getDAO();
		cliente= cd.getCliente(cliente);
		AcquistoDAO acd= AcquistoDAOFactory.getDAO();
		listaAcquistiCliente=acd.getAcquistidelCliente(cliente.getIdcliente());
		return SUCCESS;



	}



}
