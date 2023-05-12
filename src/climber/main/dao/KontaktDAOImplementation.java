package climber.main.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import climber.main.entity.Kontakt;

@Repository
public class KontaktDAOImplementation implements KontaktDAO {
	
	@Autowired
	private SessionFactory sessionFactory;


	@Transactional
	@Override
	public void saveKontakt(Kontakt kontakt) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(kontakt);
		
	}

	@Transactional
	@Override
	public List<Kontakt> getAllKontakt() {
		Session session = sessionFactory.getCurrentSession();
		Query<Kontakt> query= session.createQuery("from Kontakt");
		return query.getResultList();
	}

	@Transactional
	@Override
	public long getUnseenKontaktCount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select count(*) from Kontakt k where k.isSeen = 0");
		
		return (long) query.uniqueResult();
	}

	@Transactional
	@Override
	public Kontakt getKontakt(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Kontakt.class, id);
	}

}
