package it.unirc.pistony.pojo.Cliente;

import java.util.List;

import it.unirc.pistony.pojo.Componente.Componente;

public interface ClienteDAO {
	public Cliente getCliente(Cliente c);
	public boolean inserisciCliente(Cliente c);
	public boolean aggiornaCliente(Cliente c);
	public boolean eliminaCliente(Cliente c);
	public List<Cliente> getClienti();
	

}
