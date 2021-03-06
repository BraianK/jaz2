package web;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import registration.DummyRegistrationRepository;
import registration.Registration;

@WebServlet("/adminPanel")
public class AdminPanelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("saveData") != null) {		
			String[] loginList = request.getParameterValues("login");
			String[] checkedList = request.getParameterValues("isPremium") != null ? request.getParameterValues("isPremium") : new String[0];
			new DummyRegistrationRepository().updatePremiumStatus(loginList, checkedList);
		}
		List<Registration> userList = new DummyRegistrationRepository().GetAllUsersData();
		request.setAttribute("userList", userList);
		request.getRequestDispatcher("/adminPanel.jsp").forward(request, response);
	}
	

	

}
