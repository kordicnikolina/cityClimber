package climber.main.dao;

import java.util.List;

import climber.main.entity.Usluge;


public interface UslugeDAO {
	
	public List<Usluge> getUslugeList();

	public void saveUsluge (Usluge usluge);
	
	public Usluge getUsluge(int id);
	
	public void deleteUsluge(int id);
}
