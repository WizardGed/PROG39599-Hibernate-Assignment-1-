package ca.sheridancollege.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.sheridancollege.beans.Feedback;
import ca.sheridancollege.dao.DAO;

@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public HomeController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Form.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao = new DAO();
		Feedback feedback = new Feedback();
		String feedtext = request.getParameter("feedback");
		
		if (feedtext == null || feedtext == "") {
			
			List<String> feedbackList = dao.queryFeedbackByMonth(Calendar.getInstance(),request.getParameter("department") );
			
			request.setAttribute("feedbackList", feedbackList);
			
			request.getRequestDispatcher("Form2.jsp").forward(request, response);
			
		}
		else{
			
		feedback.setDate(Calendar.getInstance());
		feedback.setDepartment(request.getParameter("department"));
		feedback.setFeedtext(request.getParameter("feedback"));
		
		dao.saveFeedback(feedback);
		
		request.getRequestDispatcher("Form.jsp").forward(request, response);
		}
	}

}
