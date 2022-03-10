package it.unirc.pistony.Action.Titolare;

import java.awt.List;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Intervento.Intervento;
import it.unirc.pistony.pojo.Intervento.InterventoDAO;
import it.unirc.pistony.pojo.Intervento.InterventoDAOFactory;
import it.unirc.pistony.pojo.Intervento.Modifica;
import it.unirc.pistony.pojo.Intervento.Modifica;
import it.unirc.pistony.pojo.Intervento.ModificaDAO;
import it.unirc.pistony.pojo.Intervento.ModificaDAOFactory;
import it.unirc.pistony.pojo.Meccanico.Meccanico;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAO;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAOFactory;
import it.unirc.pistony.pojo.Prenota.Prenota;
import it.unirc.pistony.pojo.Prenota.PrenotaDAO;
import it.unirc.pistony.pojo.Prenota.PrenotaDAOFactory;

public class AggiungiInterventoModifica extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger("Inserisci intervento - Modifica:");

	private String idprenota;

	private String prezzo;
	private String mec1;
	private String mec2;
	private Date data;
	private String omologazione;
	private String tipoModifica;

	public String getOmologazione() {
		return omologazione;
	}

	public void setOmologazione(String omologazione) {
		this.omologazione = omologazione;
	}

	public String getTipoModifica() {
		return tipoModifica;
	}

	public void setTipoModifica(String tipoModifica) {
		this.tipoModifica = tipoModifica;
	}

	public String getIdprenota() {
		return idprenota;
	}

	public void setIdprenota(String idprenota) {
		this.idprenota = idprenota;
	}

	public String getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(String prezzo) {
		this.prezzo = prezzo;
	}

	public String getMec1() {
		return mec1;
	}

	public void setMec1(String mec1) {
		this.mec1 = mec1;
	}

	public String getMec2() {
		return mec2;
	}

	public void setMec2(String mec2) {
		this.mec2 = mec2;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}



	@Override
	public String execute() throws Exception{
		logger.info("id prenotazione :" + idprenota);

		logger.info("prezzo :" + prezzo);
		logger.info("mec1 :" + mec1);
		logger.info("mec2 :" + mec2);


		InterventoDAO intdao= InterventoDAOFactory.getDAO();
		PrenotaDAO predao = PrenotaDAOFactory.getDAO();
		MeccanicoDAO mecdao = MeccanicoDAOFactory.getDAO();
		ModificaDAO ripdao = ModificaDAOFactory.getDAO();

		Meccanico m1 = new Meccanico();
		int id1 = Integer.parseInt(mec1);
		m1.setIdmeccanico(id1);
		m1=mecdao.getMeccanico(m1);

		Meccanico m2 = new Meccanico();
		int id2 = Integer.parseInt(mec2);
		m2.setIdmeccanico(id2);
		m2=mecdao.getMeccanico(m2);
		
		if(m1.getIdmeccanico()==m2.getIdmeccanico()) {
			throw new Exception("Stai inserendo due volte lo stesso meccanico");
		}

		Set<Meccanico> meclist = new HashSet<Meccanico>();
		meclist.add(m1);
		meclist.add(m2);

		Prenota p1 = new Prenota();
		int idp = Integer.parseInt(idprenota);
		p1.setIdprenota(idp);
		p1=predao.getPrenota(p1);



		Intervento i1 = intdao.getLastIntervento();
		
		if(prezzo.equals("")) {
			throw new Exception("Non hai inserito un prezzo");
		}
				
		if(data==null) {
			throw new Exception("Non hai inserito una data");
		}
		logger.info("Data intervento: " + data);
		double price = Double.parseDouble(prezzo);
		boolean omologazioneB;

		if(i1==null) {
			int id =1;
			
			if(omologazione.equals("Si")) {			
				omologazioneB=true;
				Modifica mo1 = new Modifica(id,p1,"Modifica",price,data,omologazioneB,tipoModifica);
				Intervento i = new Intervento(id,p1,"Modifica",price,data,meclist);
				intdao.salvaIntervento(i);
				ripdao.salvaModifica(mo1);
			}
			if(omologazione.equals("No")) {
				omologazioneB=false;
				Modifica mo1 = new Modifica(id,p1,"Modifica",price,data,omologazioneB,tipoModifica);
				Intervento i = new Intervento(id,p1,"Modifica",price,data,meclist);
				intdao.salvaIntervento(i);
				ripdao.salvaModifica(mo1);

			}
			
		}
		else {
			int id = i1.getIdintervento()+1 ;
			
			if(omologazione.equals("Si")) {			
				omologazioneB=true;
				Modifica mo1 = new Modifica(id,p1,"Modifica",price,data,omologazioneB,tipoModifica);
				Intervento i = new Intervento(id,p1,"Modifica",price,data,meclist);
				intdao.salvaIntervento(i);
				ripdao.salvaModifica(mo1);
			}
			if(omologazione.equals("No")) {
				omologazioneB=false;
				Modifica mo1 = new Modifica(id,p1,"Modifica",price,data,omologazioneB,tipoModifica);
				Intervento i = new Intervento(id,p1,"Modifica",price,data,meclist);
				intdao.salvaIntervento(i);
				ripdao.salvaModifica(mo1);

			}
			
		}
		
		
		



		return SUCCESS;
	}



}
