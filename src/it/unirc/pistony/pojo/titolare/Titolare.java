package it.unirc.pistony.pojo.titolare;
// Generated 17 dic 2020, 16:46:31 by Hibernate Tools 5.4.21.Final

import it.unirc.pistony.pojo.Accounttitolare.Accounttitolare;

/**
 * Titolare generated by hbm2java
 */
public class Titolare implements java.io.Serializable {

	private Integer idtitolare;
	private String nome;
	private String cognome;
	private Indirizzo indirizzo;
	private Accounttitolare accounttitolare;

	public Titolare() {
	}



	public Titolare(Integer idtitolare, String nome, String cognome, Indirizzo indirizzo,
			Accounttitolare accounttitolare) {
		super();
		this.idtitolare = idtitolare;
		this.nome = nome;
		this.cognome = cognome;
		this.indirizzo = indirizzo;
		this.accounttitolare = accounttitolare;
	}
	
	



	public Titolare(String nome, String cognome, Indirizzo indirizzo) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.indirizzo = indirizzo;
	}



	public Integer getIdtitolare() {
		return this.idtitolare;
	}

	public void setIdtitolare(Integer idtitolare) {
		this.idtitolare = idtitolare;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return this.cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}



	public Indirizzo getIndirizzo() {
		return indirizzo;
	}



	public void setIndirizzo(Indirizzo indirizzo) {
		this.indirizzo = indirizzo;
	}



	public Accounttitolare getAccounttitolare() {
		return this.accounttitolare;
	}

	public void setAccounttitolare(Accounttitolare accounttitolare) {
		this.accounttitolare = accounttitolare;
	}

}
