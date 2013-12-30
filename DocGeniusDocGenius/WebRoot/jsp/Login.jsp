<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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

<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<script>
	$(document).ready(function(){
    	var mes= <%=request.getAttribute("mes")%>;
    	//alert(mes);
    	if (mes==-1){
    		$("#usererro").text("用户名不正确");
    	}
    	else if(mes==-2){
    		$("#usererro").text("密码不正确");
    	}
    	
    	else if(mes==-3){
    		$("#usererro").text("请输入用户名和密码");
    	}
    	else 
        	$("#usererro").text("");
    ;
});
</script>

</head>
<link rel="stylesheet" href="./jsp/css/login0.3.css"/>

<div id="wrapper">

	<s:form id="login" name="login-form" class="login-form" action="/jsp/login" method="post">
	
		<div class="header">
		<h1>用户登录</h1>
		</div>
	
		<div class="content">
		<input id="username" name="username" type="text" class="input username" placeholder="Username" />
		<div class="user-icon"></div>
        <p id="usererro"></p>
		<input name="password" type="password" class="input password" placeholder="Password" />
		<div class="pass-icon"></div>		
		</div>

		<div class="footer">
		<input type="submit" name="submit" value="登录" class="button" id="login" />
		</div>
	
	</s:form>

</div>
<!-- 
<div class="gradient">
<a class="papers"  >

    <div class="colour" style="background-color:#527578">
        <p>Papers</p>
    </div>

</a>
<a class="import">
    <div class="colour" style="background-color:#84978f">
        <p>Import</p>
    </div>
    </a>
<a class="search">
    <div class="colour" style="background-color:#ada692">
    <p>Search</p>
    </div>
    </a>
    <a class="mypapers" >
    <div class="colour" style="background-color:#47423f"><p>mypapers</p></div>
    </a>
    <a class="drafts"><div class="colour" style="background-color:#b3b1b2"><p>Drafts</p></div></a>
</div>

   -->
</html>
