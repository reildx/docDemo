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
<link href="css/DocumentComments.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
	<div id="logo">
		<h1><a href="#">文献精灵  </a>
		<s:submit  id="name" value="欢迎您，文献精灵" cssClass="name" 
			onmouseover="change()" onmouseout="changeback()">
		</s:submit>
		</h1>
		<p><em>最好的组内文献管理工具<a href="http://www.freecsstemplates.org/"></a></em></p>
	</div>
	<hr />
	<!-- end #logo -->

	<!-- end #header -->
	<!-- end #header-wrapper -->
	<div id="page">
		<div id="content">
		  <div class="post">
		  <h2 class="title"><a href="#">敏捷软件之弊 </a></h2><a href="getMyPapers" class="link">返回我的文献</a>
				<div class="entry">
					<p><a>淙峥夕箐：</a></>简单的说，敏捷开发是一种以人为核心、迭代、循序渐进的开发方法。在敏捷开发中，软件项目的构建被切分成多个子项目，各个子项目的成果都经过测试，具备集成和可运行的特征。换言之，就是把一个大项目分为多个相互联系，但也可独立运行的小项目，并分别完成，在此过程中软件一直处于可使用状态。</p>
					<p>敏捷建模（Agile Modeling，AM）的价值观包括了XP（Extreme Programming：极限编程）的四个价值观：沟通、简单、反馈、勇气，此外，还扩展了第五个价值观：谦逊。 </p>
			     </div>
				<div class="entry">
					<p><a>西厢：</a></>简单的说，敏捷开发是一种以人为核心、迭代、循序渐进的开发方法。在敏捷开发中，软件项目的构建被切分成多个子项目，各个子项目的成果都经过测试，具备集成和可运行的特征。换言之，就是把一个大项目分为多个相互联系，但也可独立运行的小项目，并分别完成，在此过程中软件一直处于可使用状态。</p>
					<p>敏捷建模（Agile Modeling，AM）的价值观包括了XP（Extreme Programming：极限编程）的四个价值观：沟通、简单、反馈、勇气，此外，还扩展了第五个价值观：谦逊。 </p>
			     </div>
			     <div class="entry">
					<p><a>Progressing：</a></>简单的说，敏捷开发是一种以人为核心、迭代、循序渐进的开发方法。在敏捷开发中，软件项目的构建被切分成多个子项目，各个子项目的成果都经过测试，具备集成和可运行的特征。换言之，就是把一个大项目分为多个相互联系，但也可独立运行的小项目，并分别完成，在此过程中软件一直处于可使用状态。</p>
					<p>敏捷建模（Agile Modeling，AM）的价值观包括了XP（Extreme Programming：极限编程）的四个价值观：沟通、简单、反馈、勇气，此外，还扩展了第五个价值观：谦逊。 </p>
			     </div>
			                 <div class="entry"></div>
		  </div>


			<div class="post">
	                			         <p class="title2" style="vertical-align:top">
			                我的评论:&nbsp;&nbsp;<INPUT type=text  style="width:495px;height:80px;margin-top:10px" value="" >
			         </p>
					<div><a href="#" class="links">评论</a><a href="getMyPapers" class="link2">返回我的文献</a></div>
			</div>
		</div><!-- end #content -->
	
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
