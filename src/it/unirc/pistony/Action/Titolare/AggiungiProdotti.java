package it.unirc.pistony.Action.Titolare;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletContext;
import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import it.unirc.pistony.pojo.Componente.Componente;
import it.unirc.pistony.pojo.Componente.ComponenteDAO;
import it.unirc.pistony.pojo.Componente.ComponenteDAOFactory;

public class AggiungiProdotti extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private static Logger logger = LogManager.getLogger("Inserisci prodotto:");

	private Componente componente;
	private File myFile;
	private String myFileContentType;
	private String myFileFileName;
	private String destPath;

	private List<Componente> componenti;

	public Componente getComponente() {
		return componente;
	}

	public void setComponente(Componente componente) {
		this.componente = componente;
	}

	public List<Componente> getComponenti() {
		return componenti;
	}

	public void setComponenti(List<Componente> componenti) {
		this.componenti = componenti;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getMyFileContentType() {
		return myFileContentType;
	}

	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public void validate() {

		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		componenti=cd.getComponenti();

		if(getComponente().getNome().isBlank()) {
			this.addFieldError("compnom", this.getText("nome.required"));
		}
		if(getComponente().getMarca().isBlank()) {
			this.addFieldError("compmarc", this.getText("marca.required"));
		}
		if(getComponente().getCategoria()==0){
			this.addFieldError("compcat", this.getText("categoria.required"));
		}
		if(getComponente().getPrezzo()<=0) {
			this.addFieldError("compprezz", this.getText("prezzo.required"));
		}
		if(getComponente().getQuantDisponibile()<=0) {
			this.addFieldError("compquant", this.getText("qunt.required"));
		}
		
	}

	public String execute() throws Exception {

		if(!myFileFileName.contains(".png")){
			throw new Exception("il file inserito non è un'immagine, non è in un formato valido o non esiste");
		}
		


		ComponenteDAO cd = ComponenteDAOFactory.getDAO();
		cd.salvaComponente(componente);

		destPath="C:\\Users\\Omen\\git\\Pistony\\Pistony\\WebContent\\assets\\img\\imgProdotti";
		
		myFileFileName= "Componente"+ componente.getIdcomponente()+".png";
		
//		System.out.println(currentUsersHomeDir + "\git\Pistony\Pistony\WebContent\assets\img\imgProdotti");
//        destPath=currentUsersHomeDir + "\git\Pistony\Pistony\WebContent\assets\img\imgProdotti";

		try {
			System.out.println("Src File name: " + myFile);
			System.out.println("Dst File name: " + myFileFileName);

			File destFile  = new File(destPath, myFileFileName);
			FileUtils.copyFile(myFile, destFile);

		} catch(IOException e) {
			e.printStackTrace();
			return ERROR;
		}

		return SUCCESS;
	}
}

