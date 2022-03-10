package it.unirc.pistony.pojo.Prenota;

import java.util.List;

public interface PrenotaDAO {
	public Prenota getPrenota(Prenota c);
	public int salvaPrenota(Prenota c);
	public List<Prenota> getAllPrenotazioni();
	public boolean eliminaPrenota(Prenota c);

}
