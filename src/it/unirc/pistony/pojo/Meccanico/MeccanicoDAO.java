package it.unirc.pistony.pojo.Meccanico;

import java.util.List;

public interface MeccanicoDAO {
	public Meccanico getMeccanico(Meccanico c);
	public int salvaMeccanico(Meccanico c);
	public boolean aggiornaMeccanico(Meccanico c);
	public boolean eliminaMeccanico(Meccanico c);

	public List<Meccanico> getMeccanici();

}
