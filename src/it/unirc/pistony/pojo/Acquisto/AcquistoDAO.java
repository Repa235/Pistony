package it.unirc.pistony.pojo.Acquisto;

import java.util.List;

import it.unirc.pistony.pojo.Cliente.Cliente;

public interface AcquistoDAO {
	public Acquisto getAcquisto(Acquisto p);
	public List<Acquisto> getAcquisti();
	public boolean inserisciAcquisto(Acquisto c);
	public Acquisto getLastAcquisto();
	public List<Acquisto> getAcquistidelCliente(int id);
	public List<Acquisto> getSchedaAcquistoById(int id);
	public List<Acquisto> getAcquistiDinstinct();
}
