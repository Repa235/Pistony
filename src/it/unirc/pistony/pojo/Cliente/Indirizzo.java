package it.unirc.pistony.pojo.Cliente;

public class Indirizzo {
	private String via;
	private String civico;
	
	public Indirizzo() {
	}
	
	public Indirizzo(String via, String civico) {
		super();
		this.via = via;
		this.civico = civico;
	}

	public String getVia() {
		return via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public String getCivico() {
		return civico;
	}

	public void setCivico(String civico) {
		this.civico = civico;
	}

	@Override
	public String toString() {
		return "Indirizzo [via=" + via + ", civico=" + civico + "]";
	}

}
