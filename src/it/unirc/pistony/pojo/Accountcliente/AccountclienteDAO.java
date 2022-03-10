package it.unirc.pistony.pojo.Accountcliente;

import java.util.List;

public interface AccountclienteDAO {
	public Accountcliente getAccountcliente(Accountcliente c);
	public boolean inserisciAccountcliente(Accountcliente c);
	public boolean aggiornaAccountcliente(Accountcliente c);
	public boolean eliminaAccountcliente(Accountcliente c);
	public Accountcliente getAccountclienteByEmail(Accountcliente c);
	public List<Accountcliente> getAccountclienti();

}
