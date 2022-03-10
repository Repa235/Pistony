package it.unirc.pistony.Action.Cliente;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;

public class RichiediModificaCliente extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private Cliente cliente;
	
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public String execute(){
		ClienteDAO clientedao = ClienteDAOFactory.getDAO();
		cliente=clientedao.getCliente(cliente);	
		return SUCCESS;
	}
}