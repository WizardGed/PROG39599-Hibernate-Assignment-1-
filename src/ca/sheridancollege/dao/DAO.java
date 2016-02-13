package ca.sheridancollege.dao;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import ca.sheridancollege.beans.Feedback;

public class DAO {

	SessionFactory sessionFactory= new Configuration().configure("ca/sheridancollege/config/hibernate.cfg.xml")
			.buildSessionFactory();

	public void saveFeedback(Feedback feedback){
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		session.saveOrUpdate(feedback);
		
		session.getTransaction().commit();
		session.close();
	}
	
	public List<String> queryFeedbackByMonth (Calendar date, String department){
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		Query query = session.getNamedQuery("Feedback.byMonth");
		
		query.setInteger("dateMonthStart", date.getActualMinimum(Calendar.DAY_OF_MONTH));
		query.setInteger("dateMonthEnd", date.getActualMaximum(Calendar.DAY_OF_MONTH));
		query.setString("department", department);
		
		List<String> feedbackList = (List<String>)query.list();
		System.out.println(Integer.toString(feedbackList.size()));
		session.getTransaction().commit();
		session.close();
		return feedbackList;
	}
}


