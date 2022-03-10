package it.unirc.pistony.Action.Titolare;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Accounttitolare.Accounttitolare;
import it.unirc.pistony.pojo.Accounttitolare.AccounttitolareDAO;
import it.unirc.pistony.pojo.Accounttitolare.AccounttitolareDAOFactory;
import it.unirc.pistony.pojo.titolare.Titolare;
import it.unirc.pistony.pojo.titolare.TitolareDAO;
import it.unirc.pistony.pojo.titolare.TitolareDAOFactory;

public class LoginTitolare extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private String email;
	private String password;
	private Map<String,Object> session; 

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Accounttitolare getAccounttitolare() {
		return accounttitolare;
	}
	public void setAccounttitolare(Accounttitolare accounttitolare) {
		this.accounttitolare = accounttitolare;
	}
	Accounttitolare accounttitolare;

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String execute(){
		Accounttitolare at = new Accounttitolare();
		at.setEmail(email);
		AccounttitolareDAO atd = AccounttitolareDAOFactory.getDAO();	
		at=atd.getAcc_titolareByEmail(at);
		if(at!=null){
			if(at.getPassword().equals(password)){

				Titolare t = new Titolare();
				TitolareDAO td = TitolareDAOFactory.getDAO();
				t.setIdtitolare(at.getIdtitolare());
				t=td.getTitolare(t);
				session.put("utente", t);
				return "areaTitolare";
			}
			else{
				this.addFieldError("emailpasswordTitolare","credenziali errate");
				return INPUT;
			}
		}
		else {
			this.addFieldError("emailpasswordTitolare","Credenziali non presenti nei nostri database");
			return INPUT;
		}
	}
}
