package climber.main.dao;

import java.util.List;


import climber.main.entity.Visinskiradovi;

public interface VisinskiradoviDAO {
	
	public List<Visinskiradovi> getVisinskiradoviList();

	public void saveVisinskiradovi (Visinskiradovi vr);
	
	public Visinskiradovi getVisinskiradovi(int id);
	
	public void deleteVisinskiradovi(int id);

}
