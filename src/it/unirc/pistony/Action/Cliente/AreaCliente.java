package it.unirc.pistony.Action.Cliente;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteAware;

public class AreaCliente extends ActionSupport implements ClienteAware, Action {
	private static final long serialVersionUID = 1L;
	private Cliente cliente;
	
public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente Cliente) {
		this.cliente = Cliente;
	}

public String execute(){	
		return SUCCESS;
	}
}
