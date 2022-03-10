package it.unirc.pistony.pojo.Cliente;

import it.unirc.pistony.pojo.Componente.Componente;

public class ComponenteCarrello {
	
	private Componente c;
	private int quantRichiesta;
	
	




	public ComponenteCarrello(Componente c, int quantRichiesta) {
		super();
		this.c = c;
		this.quantRichiesta = quantRichiesta;
	}




	public Componente getC() {
		return c;
	}




	public void setC(Componente c) {
		this.c = c;
	}




	public int getQuantRichiesta() {
		return quantRichiesta;
	}


	public void setQuantRichiesta(int quantRichiesta) {
		this.quantRichiesta = quantRichiesta;
	}
		

}
