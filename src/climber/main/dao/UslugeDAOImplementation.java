package climber.main.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.SessionFactory;

import climber.main.entity.Usluge;


@Repository
public class UslugeDAOImplementation implements UslugeDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Transactional
	@Override
    public List<Usluge> getUslugeList() {
	Session session = sessionFactory.getCurrentSession();
	Query<Usluge>query = session.createQuery("from Usluge", Usluge.class);
	List<Usluge>uslugeList = query.getResultList();
	return uslugeList;
}

    @Transactional
	@Override
	public void saveUsluge(Usluge usluge) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(usluge);
		
	}


    @Transactional
	@Override
	public Usluge getUsluge(int id) {
		Session session = sessionFactory.getCurrentSession();
		Usluge usluge = session.get(Usluge.class, id);
		return usluge;
	}


    @Transactional
	@Override
	public void deleteUsluge(int id) {
    	Session session = sessionFactory.getCurrentSession();
    	Query<Usluge> query = session.createQuery("Delete from Usluge where id=:id");
		query.setParameter("id", id);
		query.executeUpdate();
	}
	
	
}
