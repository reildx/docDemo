<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page isELIgnored="false" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Familiar 
Description: A two-column, fixed-width design for 1024x768 screen resolutions.
Version    : 1.0
Released   : 20091206

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Familiar  by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/MyStatistics.css" rel="stylesheet" type="text/css" media="screen" />
<script src="Calendar.js"></script>
</head>
<body>
    <s:submit  id="name" value="欢迎您，文献精灵" cssClass="name" 
			onmouseover="change()" onmouseout="changeback()">
	</s:submit>
	<div id="logo">
		<h1><a href="Main.jsp">文献精灵  </a>
		</h1>
		<p><em>最好的组内文献管理工具<a href="http://www.freecsstemplates.org/"></a></em></p>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="header">
		<div id="menu">
			<ul>
				<li ><a href="getMyPapers" class="first">我的论文</a></li>
				<li ><a href="ImportDocuments.jsp">文献录入</a></li>
				<li ><a href="MyProfile.jsp">个人资料</a></li>
				<li class="current_page_item"><a href="#">统计</a></li>
				<li><a href="MyDrafts.jsp">草稿</a></li>
				<li><a href="MultiSearch.jsp">多条件查询</a></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="search">
			<form method="get" action="search">
				<fieldset>
				<input type="text" name="s" id="search-text" size="15" />
				<input type="submit" id="search-submit" value="GO" />
				</fieldset>
			</form>
		</div>
		<!-- end #search -->
	</div>
	<!-- end #header -->
	<!-- end #header-wrapper -->

	<div id="statistic_page">
		<div class="choose">
			<s:form>
			<table border="0"  align="center">
				<tr>
  					<td>起始时间：</td>
  					<td><input name="starttime" type="text" onfocus="setday(this)" readonly="readonly" /></td>
  					<td>截止时间：</td>
  					<td><input name="endtime" type="text" onfocus="setday(this)" readonly="readonly" /></td>
				</tr>
				<tr>
  					<td>名字：</td>
  					<td><input type="text" name="name" /></td>
				</tr>
			</table>
				<input type="submit" value="查询" class="submit"/>
			</s:form>
		</div>

		<div id="statistic_paper">
			<p class="item">文献信息</p>
			<p class="image"><img src="images/statistic_example.jpg" /></p>
		</div>

		<div id="statistic_simple_comment">
			<p class="item">简要评价</p>
			<p class="image"><img src="images/statistic_example.jpg" /></p>
		</div>

		<div id="statistic_detail_comment">
			<p class="item">详细评价</p>
			<p class="image"><img src="images/statistic_example.jpg" /></p>
		</div>

		<div id="statistic_attachment">
			<p class="item">附件提交</p>
			<p class="image"><img src="images/statistic_example.jpg" /></p>
		</div>
	</div>
	<!-- end #page -->
	<div id="footer">
		<p>Copyright (c) 2008 software.nju.edu.cn All rights reserved. Design by <a href="http://www.freecsstemplates.org/">4+2开发小组</a>.</p>
	</div>
	<!-- end #footer -->
</body>
<script type="text/javascript" >
     function change(){
        document.getElementById("name").value = "退出";
    }
    
    function changeback(){
        document.getElementById("name").value = "欢迎您，文献精灵";
    }
</script>
</html>
