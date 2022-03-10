package it.unirc.pistony.pojo.Intervento;

import java.util.Date;

import it.unirc.pistony.pojo.Prenota.Prenota;

public class Riparazione extends Intervento {
	
	private String tipo_di_riparazione;
	private boolean tagliando;
	


	public Riparazione(Integer idintervento, Prenota prenota, String tipo, double prezzo, Date dataIntervento,
			String tipo_di_riparazione, boolean tagliando) {
	
		this.setIdintervento(idintervento);
		this.setPrenota(prenota);
		this.setTipo(tipo);
		this.setPrezzo(prezzo);
		this.setDataIntervento(dataIntervento);
		this.setTipo_di_riparazione(tipo_di_riparazione);
		this.setTagliando(tagliando);
	}

	public Riparazione() {
		super();
	}

	public String getTipo_di_riparazione() {
		return tipo_di_riparazione;
	}

	public void setTipo_di_riparazione(String tipo_di_riparazione) {
		this.tipo_di_riparazione = tipo_di_riparazione;
	}

	public boolean isTagliando() {
		return tagliando;
	}

	public void setTagliando(boolean tagliando) {
		this.tagliando = tagliando;
	}
	
}
