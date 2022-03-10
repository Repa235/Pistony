package it.unirc.pistony.pojo.titolare;

import java.util.List;

import it.unirc.pistony.pojo.Componente.Componente;

public interface TitolareDAO {
	public Titolare getTitolare(Titolare titolare);
	public boolean aggiornaTitolare(Titolare c);
	public boolean inserisciTitolare(Titolare t);


}
