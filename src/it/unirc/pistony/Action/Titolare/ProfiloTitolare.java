package it.unirc.pistony.Action.Titolare;

import java.util.Collections;
import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Acquisto.Acquisto;
import it.unirc.pistony.pojo.Acquisto.AcquistoDAO;
import it.unirc.pistony.pojo.Acquisto.AcquistoDAOFactory;
import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;
import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;
import it.unirc.pistony.pojo.Intervento.Intervento;
import it.unirc.pistony.pojo.Intervento.InterventoDAO;
import it.unirc.pistony.pojo.Intervento.InterventoDAOFactory;
import it.unirc.pistony.pojo.Meccanico.*;
import it.unirc.pistony.pojo.Prenota.*;
import it.unirc.pistony.pojo.Prenota.PrenotaDAO;
import it.unirc.pistony.pojo.titolare.Titolare;
import it.unirc.pistony.pojo.titolare.TitolareAware;

public class ProfiloTitolare extends ActionSupport implements TitolareAware, Action {

	private static final long serialVersionUID = 1L;
	private Titolare titolare;

	private List<Componente> componenti;
	private List<Acquisto> listaAcquisti;
	private List<Prenota> listaPrenotazioni;
	private List<Cliente> listaClienti;
	private int n_clienti;
	private int n_meccanici;
	private int n_prenotazioni;
	private int n_interventi;

	public Titolare getTitolare() {
		return titolare;
	}
	public List<Componente> getComponenti() {
		return componenti;
	}
	public void setComponenti(List<Componente> componenti) {
		this.componenti = componenti;
	}
	public List<Acquisto> getListaAcquisti() {
		return listaAcquisti;
	}
	public void setListaAcquisti(List<Acquisto> listaAcquisti) {
		this.listaAcquisti = listaAcquisti;
	}
	public List<Prenota> getListaPrenotazioni() {
		return listaPrenotazioni;
	}
	public void setListaPrenotazioni(List<Prenota> listaPrenotazioni) {
		this.listaPrenotazioni = listaPrenotazioni;
	}
	public List<Cliente> getListaClienti() {
		return listaClienti;
	}
	public void setListaClienti(List<Cliente> listaClienti) {
		this.listaClienti = listaClienti;
	}
	public int getN_clienti() {
		return n_clienti;
	}
	public void setN_clienti(int n_clienti) {
		this.n_clienti = n_clienti;
	}
	public int getN_meccanici() {
		return n_meccanici;
	}
	public void setN_meccanici(int n_meccanici) {
		this.n_meccanici = n_meccanici;
	}

	public int getN_prenotazioni() {
		return n_prenotazioni;
	}

	public void setN_prenotazioni(int n_prenotazioni) {
		this.n_prenotazioni = n_prenotazioni;
	}

	public int getN_interventi() {
		return n_interventi;
	}

	public void setN_interventi(int n_interventi) {
		this.n_interventi = n_interventi;
	}

	public void setTitolare(Titolare titolare) {
		this.titolare = titolare;
	}

	public String execute(){	

		AcquistoDAO acd= AcquistoDAOFactory.getDAO();
		listaAcquisti= acd.getAcquistiDinstinct();
		ComponenteDAO cdao = ComponenteDAOFactory.getDAO();
		componenti = cdao.getComponenti();
		ClienteDAO clidao = ClienteDAOFactory.getDAO();
		listaClienti=clidao.getClienti();
		n_clienti=listaClienti.size();
		MeccanicoDAO mdao = MeccanicoDAOFactory.getDAO();
		List<Meccanico> meccanici=mdao.getMeccanici();
		n_meccanici=meccanici.size();
		PrenotaDAO pdao = PrenotaDAOFactory.getDAO();
		listaPrenotazioni=pdao.getAllPrenotazioni();
		n_prenotazioni=listaPrenotazioni.size();
		Collections.reverse(listaPrenotazioni);
		InterventoDAO idao = InterventoDAOFactory.getDAO();
		List<Intervento> interventi=idao.getAllInterventi();
		n_interventi=interventi.size();
		return SUCCESS;

	}

}
