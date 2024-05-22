package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/servlet/greeting")
public class Greeting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String userName = request.getParameter("userName");
		String companyName = request.getParameter("companyName");
		String email = request.getParameter("email");
		String review = request.getParameter("review");
		String[] newsletters = request.getParameterValues("newsletter");
		String documentRequest = request.getParameter("documentRequest");

		request.setAttribute("userName", userName);
		request.setAttribute("companyName", companyName);
		request.setAttribute("email", email);
		request.setAttribute("review", review);
		request.setAttribute("newsletters", newsletters);
		request.setAttribute("documentRequest", documentRequest);

		// 資料請求が "Yes" であれば、別のページにフォワード
		if ("Yes".equals(documentRequest)) {
			request.getRequestDispatcher("/jsp/contact3.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/jsp/contact2.jsp").forward(request, response);
		}
	}
}
