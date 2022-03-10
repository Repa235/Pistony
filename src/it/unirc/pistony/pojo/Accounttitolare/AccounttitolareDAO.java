package it.unirc.pistony.pojo.Accounttitolare;

public interface AccounttitolareDAO {
	public Accounttitolare getAccounttitolare(Accounttitolare c);
	public boolean inserisciAccounttitolare(Accounttitolare c);
	public boolean aggiornaAccounttitolare(Accounttitolare c);
	public boolean eliminaAccounttitolare(Accounttitolare c);
	public Accounttitolare getAcc_titolareByEmail(Accounttitolare c);
	
	
}
