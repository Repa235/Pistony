package it.unirc.pistony.Action.Titolare;

import java.io.IOException;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Meccanico.Meccanico;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAO;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAOFactory;

public class EliminaDipendente  extends ActionSupport{

	private static final long serialVersionUID = 1L;

	private int idMeccanico;

	public int getIdMeccanico() {
		return idMeccanico;
	}

	public void setIdMeccanico(int idMeccanico) {
		this.idMeccanico = idMeccanico;
	}

	public String execute() throws IOException {

		MeccanicoDAO cdao = MeccanicoDAOFactory.getDAO();
		Meccanico c =new Meccanico();
		c.setIdmeccanico(idMeccanico);
		c=cdao.getMeccanico(c);
		cdao.eliminaMeccanico(c);
		return SUCCESS;

	}
}





