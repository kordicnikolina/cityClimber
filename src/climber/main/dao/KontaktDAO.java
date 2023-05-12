package climber.main.dao;

import java.util.List;

import climber.main.entity.Kontakt;

public interface KontaktDAO {
	
	public void saveKontakt (Kontakt kontakt);
	
	public List<Kontakt> getAllKontakt();
	
	public long getUnseenKontaktCount();
	
	public Kontakt getKontakt (int id);

}
