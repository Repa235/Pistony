package it.unirc.pistony.pojo.Intervento;

import java.util.List;

public interface RiparazioneDAO {
	public Riparazione getRiparazione(Riparazione c);
	public int salvaRiparazione(Riparazione c);
	public List<Riparazione> getAllRiparazioni();

}
