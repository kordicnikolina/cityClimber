package climber.main.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import climber.main.entity.Visinskiradovi;


@Repository
public class VisinskiradoviDAOImplementation implements VisinskiradoviDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	@Override
	public List<Visinskiradovi> getVisinskiradoviList() {
		Session session = sessionFactory.getCurrentSession();
		Query<Visinskiradovi>query = session.createQuery("from Visinskiradovi", Visinskiradovi.class);
		List<Visinskiradovi>visinskiradoviList = query.getResultList();
		return visinskiradoviList;
	}

	@Transactional
	@Override
	public void saveVisinskiradovi(Visinskiradovi vr) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(vr);
		
	}

	@Transactional
	@Override
	public Visinskiradovi getVisinskiradovi(int id) {
		Session session = sessionFactory.getCurrentSession();
		Visinskiradovi vr = session.get(Visinskiradovi.class, id);
		return vr;
	}

	@Transactional
	@Override
	public void deleteVisinskiradovi(int id) {
		Session session = sessionFactory.getCurrentSession();
    	Query<Visinskiradovi> query = session.createQuery("Delete from Visinskiradovi where id=:id");
		query.setParameter("id", id);
		query.executeUpdate();
		
	}

}
