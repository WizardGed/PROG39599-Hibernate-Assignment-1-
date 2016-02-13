package ca.sheridancollege.beans;

import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;
import org.hibernate.annotations.SelectBeforeUpdate;

@SelectBeforeUpdate
@DynamicUpdate
@Entity
@NamedQueries({
	@NamedQuery(name="Feedback.byMonth", query="from Feedback where month(date) between :dateMonthStart and :dateMonthEnd and department = :department"),
})
public class Feedback implements Serializable {
	@Id
	@GeneratedValue
	private int id;
	private String feedtext;
	private String department;
	private Calendar date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getFeedtext() {
		return feedtext;
	}

	public void setFeedtext(String feedtext) {
		this.feedtext = feedtext;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public Calendar getDate() {
		return date;
	}

	public void setDate(Calendar date) {
		this.date = date;
	}

	public Feedback() {
	}

	public Feedback(String feedtext, String department, Calendar date) {
		this.feedtext = feedtext;
		this.department = department;
		this.date = date;
	}
	

}
