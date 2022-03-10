package it.unirc.pistony.pojo.Cliente;

import it.unirc.pistony.pojo.Acquisto.Acquisto;
import it.unirc.pistony.pojo.Componente.Componente;

public class AcquistoComponente {
	
	private Componente componente;
	private Acquisto acquisto;
	
	public AcquistoComponente(Componente componente, Acquisto acquisto) {
		super();
		this.componente = componente;
		this.acquisto = acquisto;
	}
	
	

	public AcquistoComponente() {
		super();
	}



	public Componente getComponente() {
		return componente;
	}

	public void setComponente(Componente componente) {
		this.componente = componente;
	}

	public Acquisto getAcquisto() {
		return acquisto;
	}

	public void setAcquisto(Acquisto acquisto) {
		this.acquisto = acquisto;
	}
	
	

}
