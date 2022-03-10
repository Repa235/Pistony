package it.unirc.pistony.Action.Generali;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class Ticket  extends ActionSupport implements ServletResponseAware,SessionAware {
	private static Logger logger = LogManager.getLogger("Ticket");

	private String nome;
	private String cognome;
	private Date data;
	private String datastring;
	private String random;
	private Map <String,Object> session;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getDatastring() {
		return datastring;
	}

	public void setDatastring(String datastring) {
		this.datastring = datastring;
	}

	public String getRandom() {
		return random;
	}

	public void setRandom(String random) {
		this.random = random;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public void validate() {
	
		if(nome.isBlank()) {
			this.addFieldError("nome_vuoto", "Inserisci nome");
		}
		if(cognome.isBlank()) {
			this.addFieldError("cognome_vuoto", "Inserisci cognome");
		}
		Date today = new Date();  
		if(data.before(today)) {
			this.addFieldError("passato", "Non puoi prenotarti in giorni già passati");
		}
		if(data.getDay()==0||data.getDay()==6) {
            this.addFieldError("giorno_festivo", "Nei giorni di Sab e Dom l'officina è chiusa");
        }
		else if(data.getHours()<=9||(data.getHours()>=18 && data.getMinutes()>30)) {
            this.addFieldError("fuori_orario", "L'officina è aperta dalle 9 alle 18");
        }
		
		Date now=new Date();
		if(data.getHours()==now.getHours()&&data.getMinutes()==now.getMinutes()) {
			 this.addFieldError("now", "Non puoi prenotarti in questo momento");
		}
			
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub

		data.setMinutes(data.getMinutes()+30);
		SimpleDateFormat format_d = new SimpleDateFormat("dd-MM-yyyy 'alle' HH:mm");
		datastring = format_d.format(data);
		logger.info("Data " + datastring);
		int pre = (int) (Math.random()* (9999-1000)+1000);
		random = "PRE"+ "-" +pre;
		session.put("nome_t", nome);
		session.put("cognome_t",cognome);
		session.put("data_t", datastring);
		session.put("random_t", random);
		return SUCCESS;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub

	}

}
