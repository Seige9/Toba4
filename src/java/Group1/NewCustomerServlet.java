/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Group1;

import entity.User;
import Group3.UserDB;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Shawn_000
 */
public class NewCustomerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		String url;
		url = "/Success2.jsp";

		String action = request.getParameter("action");
		if (action == null) {
			action = "join";
		}

		//User user = (User)request.getSession().getAttribute("user");
		switch (action) {
			case "join":
				url = "/Success2.jsp";
				break;
			case "add":
				String firstname = request.getParameter("Firstname");
				String lastname = request.getParameter("Lastname");
				String phone = request.getParameter("Phone");
				String address = request.getParameter("Address");
				String city = request.getParameter("City");
				String state = request.getParameter("State");
				String zipcode = request.getParameter("Zipcode");
				String email = request.getParameter("Email");
				User user = new User(firstname + zipcode,"welcome1", firstname, lastname, phone, address, city, state, zipcode, email);
				String message;
				if (firstname == null || lastname == null || phone == null
						|| address == null || city == null || state == null
						|| zipcode == null || email == null || firstname.isEmpty()
						|| lastname.isEmpty() || phone.isEmpty() || address.isEmpty()
						|| city.isEmpty() || state.isEmpty() || zipcode.isEmpty()
						|| email.isEmpty()) {
					message = "Please fill out all of the form fields.";
					url = "/NewCustomer.jsp";
				} else {
					message = null;
					url = "/Success2.jsp";
					if (UserDB.insert(user) == 0) {
						url = "/NewCustomer.jsp";
						message = "System error.";
					} else {
						// set user as attribute of session
						request.getSession().setAttribute("user", user);
					}
				}
				request.setAttribute("message", message);
				break;
		}
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);

	}

              
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
