<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuce.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/jquery/jquery.datepick.css'/>">
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/jquery/jquery.datepick.css'/>">
<script type="text/javascript"
	src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/jquery/jquery.datepick.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/jquery/jquery.datepick-zh-CN.js'/>"></script>
	
<script type="text/javascript">
		function  show() {
			var data="";
			var tagName = document.getElementsByTagName("input");
			for(var i=0;i<tagName.length;i++){
			data+="字段"+(i+1)+"    "+tagName[i].type+":"+tagName[i].value+"\n";
			}
			alert(data);
		}
		function checkuser(){
			if (document.getElementById("name").value==""){
				alert("请输入用户名！");
				return false;
			}
			return  true;
		}
		function checkpassword1(){
			if(document.getElementById("pswd1").value==""){
				alert("请输入密码：");
				return false;
			}
			return  true;
		}
		function checkpassword2(){
			if(document.getElementById("pswd2").value==""){
				alert("请输入密码：");
				return false;
			}
			if (document.getElementById("pswd2").value!=document.getElementById("pswd1").value){
				alert("密码不一致！");
				return false;
			}
			return  true;
		}
		function checkform()
		{
			if(!checkuser()) return false;
			if(!checkpassword1()) return false;
			if(!checkpassword2()) return false;
			document.getElementById("form").submit();
			
		}
	</script>
  </head>
  <%
  	String msg = (String)request.getAttribute("msg");
  	if(msg==null){
  		msg="";
  	}
  	String name = "";
  	Cookie[] c = request.getCookies();
  	if(c!=null){
  		for(Cookie cook:c){
  			if(cook.getName().equals("name")){
  				name=cook.getValue();
  			}
  		}
  	}
   %>
  <body>
    <h1>注册</h1>
  	<%=msg %>
    <form action="Zhuce" method="post" id="form">
    	账号:<input id="name" type="text" name="name" class="err" onblur="checkuser()">
    	<br>
    	密码:<input id="pswd1" type="password" name="pswd" class="err" onblur="checkpassword1()">
    	<br>
    	密码2:<input id="pswd2" type="password" class="err" onblur="checkpassword2()">
    	<br>
    	<input type="button" value="注册"  onclick="checkform()">
    	<!-- <input type="button" value="登陆" onclick="window.location.href='login.jsp'"> -->
    </form>
  </body>
</html>
