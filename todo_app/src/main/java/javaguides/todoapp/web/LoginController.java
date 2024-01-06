package javaguides.todoapp.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaguides.todoapp.dao.LoginDao;
import javaguides.todoapp.dao.TodoDao;
import javaguides.todoapp.model.LoginBean;
import javaguides.todoapp.model.Todo;

/**
 * 
 */

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("login/login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		authenticate(request, response);
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String username = request.getParameter("username");
		System.out.println("NAME "+username);
		String password = request.getParameter("password");
		LoginBean loginBean = new LoginBean();
		loginBean.setUsername(username);
		loginBean.setPassword(password);

		try {
			if (loginDao.validate(loginBean)) {
				System.out.println("Login Success");
				HttpSession session = request.getSession();
				session.setAttribute("user", username);
				//request.setAttribute("user", username);			
				//request.getSession().setAttribute("user", username );
				System.out.println("user logged in: "+request.getSession().getAttribute("user"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("todo/todo-list.jsp");
				dispatcher.forward(request, response);
			} else {
				System.out.println("Login Failed");
				System.out.println("user not exist");
				HttpSession session = request.getSession();
				session.setAttribute("user", null);
				response.sendRedirect("login/login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}
