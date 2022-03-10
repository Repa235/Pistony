package it.unirc.pistony.pojo.Componente;

import java.util.List;

public interface ComponenteDAO {
	public Componente getComponente(Componente c);
	public int salvaComponente(Componente c);
	public boolean aggiornaComponente(Componente c);
	public boolean eliminaComponente(Componente c);
	public List<Componente> getComponenti();
	public List<Componente> getComponentiByCategoria(int categoria);
}
