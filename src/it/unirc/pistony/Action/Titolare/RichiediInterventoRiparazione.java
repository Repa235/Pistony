package it.unirc.pistony.Action.Titolare;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteDAO;
import it.unirc.pistony.pojo.Cliente.ClienteDAOFactory;
import it.unirc.pistony.pojo.Meccanico.Meccanico;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAO;
import it.unirc.pistony.pojo.Meccanico.MeccanicoDAOFactory;
import it.unirc.pistony.pojo.Prenota.*;

public class RichiediInterventoRiparazione extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private Prenota pre;
	private Cliente cli;
	private List<Meccanico> mec;

	public Cliente getCli() {
		return cli;
	}
	public void setCli(Cliente cli) {
		this.cli = cli;
	}
	public Prenota getPre() {
		return pre;
	}
	public void setPre(Prenota pre) {
		this.pre = pre;
	}

	public List<Meccanico> getMec() {
		return mec;
	}
	public void setMec(List<Meccanico> mec) {
		this.mec = mec;
	}
	@Override
	public String execute(){

		PrenotaDAO predao = PrenotaDAOFactory.getDAO();
		ClienteDAO clidao = ClienteDAOFactory.getDAO();
		pre=predao.getPrenota(pre);
		cli = pre.getCliente();
		cli=clidao.getCliente(cli);
		MeccanicoDAO mecdao = MeccanicoDAOFactory.getDAO();
		mec=mecdao.getMeccanici();

		return SUCCESS;
	}




}
