<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link href="css/DocumentSearchResult.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
	<div id="logo">
		<h1><a href="#">文献精灵  </a></h1>
		<p><em>最好的组内文献管理工具<a href="http://www.freecsstemplates.org/"></a></em></p>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="header">
		<div id="menu">
			<ul>
				<li><a href="getMyPapers" class="first">我的论文</a></li>
				<li ><a href="ImportDocuments.jsp">文献录入</a></li>
				<li><a href="MyProfile.jsp">个人资料</a></li>
				<li><a href="MyStatistics.jsp">统计</a></li>
				<li><a href="MyDrafts.jsp">草稿</a></li>
				<li><a href="MultiSearch.jsp">多条件查询</a></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="search">
			<form method="get" action="">
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
				<h2 class="title"><a href="#">查询结果</a></h2>
				<div class="entry">
					<p><a>摘要：</a></>简单的说，敏捷开发是一种以人为核心、迭代、循序渐进的开发方法。在敏捷开发中，软件项目的构建被切分成多个子项目，各个子项目的成果都经过测试，具备集成和可运行的特征。换言之，就是把一个大项目分为多个相互联系，但也可独立运行的小项目，并分别完成，在此过程中软件一直处于可使用状态。</p>
					<p>敏捷建模（Agile Modeling，AM）的价值观包括了XP（Extreme Programming：极限编程）的四个价值观：沟通、简单、反馈、勇气，此外，还扩展了第五个价值观：谦逊。 </p>
					<div><a href="DocumentDetail.jsp" class="links">全文查看</a><a href="DocumentComments.jsp" class="comments">查看评论</a></div>
			     </div>
		  </div>
			<div class="post">
				<p class="meta">南京大学外国语学院&nbsp; <a href="#">作者：李全民</a></p>
				<div class="entry">
					<p><a>摘要：</a>开放源码软件《open-source》是一个新名词，它被定义为描述其源码可以被公众使用的软件，并且此软件的使用，修改和分发也不受许可证的限制。开放源码软件通常是有copyright的，它的许可证可能包含这样一些限制： 著意的保护它的开放源码状态，著者身份的公告，或者开发的控制。“开放源码”正在被公众利益软件组织注册为认证标记，这也是创立正式的开放源码定义的一种手段。</p>
				</div>
					<div><a href="#" class="links">查看全文</a><a href="#" class="comments">查看评论</a></div>
			</div>
			<div class="post">
				<p class="meta">南京大学软件学院&nbsp; <a href="#">作者：李兵</a></p>
				<div class="entry">
					<p><a>摘要：</a>测试驱动开发，英文全称Test-Driven Development，简称TDD，是一种不同于传统软件开发流程的新型的开发方法。它要求在编写某个功能的代码之前先编写测试代码，然后只编写使测试通过的功能代码，通过测试来推动整个开发的进行。这有助于编写简洁可用和高质量的代码，并加速开发过程。 </p>
			  </div>
					<div><a href="#" class="links">查看全文</a><a href="#" class="comments">查看评论</a></div>
			</div>
		</div><!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2>热门标签</h2>
					<p>开源 ssh jsp 敏捷 hibernate structs spring 框架 javascript ajax 架构 jquery oracle php android  mysql 云计算</p>
				</li>
				<li>
					<h2>文献分类 </h2>
					<ul>
						<li><a href="#">软件工程</a></li>
						<li><a href="#">计算机科学</a></li>
						<li><a href="#">医学</a></li>
						<li><a href="#">经济学</a></li>
						<li><a href="#">法学</a></li>
						<li><a href="#">机械</a></li>
						<li><a href="#">语言</a></li>
						<li><a href="#">人文</a></li>
						<li><a href="#">其它</a></li>
					</ul>
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
</html>
