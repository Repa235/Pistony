package it.unirc.pistony.pojo.Intervento;

import java.util.List;

public interface ModificaDAO {
	public Modifica getModifica(Modifica c);
	public int salvaModifica(Modifica c);
	public List<Modifica> getAllModifiche();

	

}
