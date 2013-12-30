<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
<link href="css/MyDrafts.css" rel="stylesheet" type="text/css" media="screen" />
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
				<li ><a href="MyStatistics.jsp">统计</a></li>
				<li class="current_page_item"><a href="#">草稿</a></li>
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
	<div id="page">
		<div id="content">
		  <div class="post">
		  
		     <!-- 真正的显示部分 -->
		        <s:iterator value="#request.drafts" var="var"> 
                    <h2 class="title"><a href="#"><s:property value="#var.title"/> </a> </h2>
                    <p class="meta">南京大学海外教育学院 &nbsp; <a href="#"><s:property value="#var.author"/></a></p>
                    <p><a>未完成的评论：</a><s:textarea value="#var.content"/></p>
                    <div><a href="#" class="comments">继续评论</a></div>
                </s:iterator> 
		        
		        
				<h2 class="title"><a href="#">敏捷软件之弊 </a></h2>
				<p class="meta">南京大学海外教育学院 &nbsp; <a href="#">作者：李东煦</a></p>
				<div class="">
					<p><a style="font-size:12px;">未完的评论：</a>
					<input type="text" style="width:500px;" value="敏捷开发是一种以人为核心、迭代、循序渐进的开发方法(*^__^*)">
					</input>
					</p>
					<div><a href="#" class="comments">继续评论</a></div>
			</div>
		  </div>
		  
		  <div class="post"><div class="entry"></div></div>
		  
			<div class="post">
				<h2 class="title"><a href="#">开源软件的阴谋</a></h2>
				<p class="meta">南京大学外国语学院&nbsp; <a href="#">作者：李全民</a></p>
				<div class="">
					<p><a style="font-size:12px;">未完的评论：</a>
					<input type="text" style="width:500px;" value="敏捷开发是一种以人为核心、迭代、循序渐进的开发方法(*^__^*)">
					</input>
					</p>
				</div>
					<div><a href="#" class="comments">继续评论</a></div>
			</div>
		</div><!-- end #content -->
				<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2>热门标签</h2>
					<p>开源 ssh jsp 敏捷 hibernate structs spring 框架 javascript ajax 架构
						jquery oracle php android mysql 云计算</p></li>
				<li>
					<h2>文献分类</h2>
					
					<ul>
						<li><a href="#">图书</a>
						</li>
						<li><a href="#">图书章节</a>
						</li>
						<li><a href="#">期刊</a>
						</li>
						<li><a href="#">会议</a>
						</li>
						<li><a href="#">学术论文</a>
						</li>
						<li><a href="#">技术报告</a>
						</li>
						<li><a href="#">在线资源</a>
						</li>
					</ul>
	<!-- 		
				<s:iterator var="ent" value="#request.list" status="statu">
                   <s:property value="#ent" />
                      <li>
                         <a href="#">图书</a>
				      </li>
                </s:iterator>
	 -->	
				</li>
				<li>
					<h2>今日热门</h2>
					<ul>
						<li><a href="#">学霸老李和金丝肉松饼不得不说的故事</a></li>
						<li><a href="#">科学家魏林溪关于重庆糍粑的最新发现</a></li>
						<li><a href="#">南京小偷猖獗，赵濛同学有话要说</a></li>
						<li><a href="#">李兵全面解读解读: 小孩说谎话，尿尿会分叉</a></li>
						<li><a href="#">大师李全民的10小时速成PS教程</a></li>
						<li><a href="#">wow老李第一人称视角教学</a></li>
						<li><a href="#">健美教练魏林溪给初学者的7点建议</a></li>
						<li><a href="#">梦幻西游最美女玩家赵濛精彩图集</a></li>
						<li><a href="#">安卓开发入门经典——李全民</a></li>
						<li><a href="#">李兵：女生的心思你不会猜</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
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
