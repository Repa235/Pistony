package it.unirc.pistony.pojo.Intervento;

import java.util.Date;

import it.unirc.pistony.pojo.Prenota.Prenota;

public class Modifica extends Intervento{


	private boolean omologazione;
	private String tipo_di_modifica;



	public Modifica() {
		super();
	}
	
	

	public Modifica(Integer idintervento, Prenota prenota, String tipo, double prezzo, Date dataIntervento,
			boolean omologazione, String tipo_di_modifica) {
		
		this.setIdintervento(idintervento);
		this.setPrenota(prenota);
		this.setTipo(tipo);
		this.setPrezzo(prezzo);
		this.setDataIntervento(dataIntervento);
		this.setOmologazione(omologazione);
		this.setTipo_di_modifica(tipo_di_modifica);
		
	}



	public boolean isOmologazione() {
		return omologazione;
	}

	public void setOmologazione(boolean omologazione) {
		this.omologazione = omologazione;
	}

	public String getTipo_di_modifica() {
		return tipo_di_modifica;
	}

	public void setTipo_di_modifica(String tipo_di_modifica) {
		this.tipo_di_modifica = tipo_di_modifica;
	}




}
