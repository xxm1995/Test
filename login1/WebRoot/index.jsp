<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
 <%
 	String msg="";
 	String ms = (String)request.getAttribute("msg");
 	if(ms!=null){
 		msg=ms;
 	}
  %> 
  <h1>login</h1>
  <%=msg %>
    <form action="Login" method="post">
    	姓名:<input type="text" name="name" value="dnf"  style="width: 166px; "><br>
    	密码:<input type="password" name="pswd" value="123" style="width: 166px; "><br>
    	<input type="submit" value="登录">
    	
    </form>
  </body>
</html>
