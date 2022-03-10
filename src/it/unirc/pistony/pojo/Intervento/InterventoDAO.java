package it.unirc.pistony.pojo.Intervento;

import java.util.List;


public interface InterventoDAO {
	public Intervento getIntervento(Intervento c);
	public int salvaIntervento(Intervento c);
	public boolean aggiornaIntervento(Intervento c);
	public List<Intervento> getAllInterventi();
	public Intervento getLastIntervento();
	

}
