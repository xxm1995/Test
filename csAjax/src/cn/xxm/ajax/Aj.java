package cn.xxm.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Aj extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("cs");
		String method = request.getMethod();
		System.out.println("1.请求方式：" + method);
		//		2.获得请求参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("2.请求参数：" + username);
		System.out.println("2.请求参数：" + password);
		String jsonData = "{\"message\":\"成功了\"}";

		//3.2 响应的中文乱码
		//		response.setContentType("text/html;charset=UTF-8");  //html数据，不标准
		response.setContentType("application/json;charset=UTF-8");

		//3.3 发送数据
		response.getWriter().print(jsonData);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getMethod();
		System.out.println("1.请求方式：" + method);
		//		2.获得请求参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("2.请求参数：" + username);
		System.out.println("2.请求参数：" + password);
		String jsonData = "{\"cs\":\"dnf你好\"}";

		//3.2 响应的中文乱码
		//		response.setContentType("text/html;charset=UTF-8");  //html数据，不标准
		response.setContentType("application/json;charset=UTF-8");

		//3.3 发送数据
		response.getWriter().print(jsonData);
	}

}
