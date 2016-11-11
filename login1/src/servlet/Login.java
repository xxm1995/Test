package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String pswd = request.getParameter("pswd");
		PrintWriter out = response.getWriter();
		out.print(name+"  "+"<br>"+pswd);
		if (name.equals("dnf")&&pswd.equals("123")) {
			Cookie cookie = new Cookie("ck", name);
			cookie.setMaxAge(60*60*24);
			response.addCookie(cookie);
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			response.sendRedirect("MyJsp.jsp");
		} else {
			request.setAttribute("msg", "账号密码错误");
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
	}

}
