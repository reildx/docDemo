<%@page import="entity.Attach"%>
<%@ page language="java" import="java.util.*,entity.Paper" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Familiar Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/EditDocuments.css" rel="stylesheet" type="text/css"
	media="screen" />
</head>
<body>
    <s:submit  id="name" value="欢迎您，文献精灵" cssClass="name" 
			onmouseover="change()" onmouseout="changeback()">
	</s:submit>
	<div id="logo">
		<h1>
			<a href="Main.jsp">文献精灵 </a>
		</h1>
		<p>
			<em>最好的组内文献管理工具<a href="http://www.freecsstemplates.org/"></a>
			</em>
		</p>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="getMyPapers" class="first">我的论文</a>
				</li>
				<li><a href="ImportDocuments.jsp">文献录入</a>
				</li>
				<li><a href="MyProfile.jsp">个人资料</a>
				</li>
				<li><a href="MyStatistics.jsp">统计</a>
				</li>
				<li><a href="MyDrafts.jsp">草稿</a>
				</li>
				<li><a href="MultiSearch">多条件查询</a>
				</li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="search">
			<form method="get" action="search">
				<fieldset>
					<input type="text" name="s" id="search-text" size="15" /> <input
						type="submit" id="search-submit" value="GO" />
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
			<s:form action="editFile" method="post" enctype="multipart/form-data">
				<div class="entry2">
					<p class="title3">编辑基本信息</p>
					<s:hidden name="attach.type" value="ldx" ></s:hidden>
					<%
					  %>
					<p class="title4">
						题目:&nbsp;&nbsp;<s:textfield name="paper.title"></s:textfield>
						<!--<INPUT class="title1.1" type=text value="" />-->
						&nbsp;&nbsp;&nbsp;&nbsp;
						作者:&nbsp;&nbsp;<s:textfield name="paper.author"></s:textfield>
						<!--<INPUT class="title1.1"type=text value="" />-->
					</p>
					<p class="title4">
						分类:&nbsp;&nbsp;<s:textfield name="paper.type"></s:textfield>
						<!--<INPUT class="title1.1" type=text value="">-->
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年份:&nbsp;&nbsp;<s:textfield name="paper.year"></s:textfield>
							<!--<INPUT class="title1.1"
							type=text value="">-->
					</p>
					<p class="title4">
						页数:&nbsp;&nbsp;<s:textfield  name="paper.pages"></s:textfield>
						<!--<INPUT class="title1.1" type=text value="">-->
							&nbsp;&nbsp;&nbsp;&nbsp;关键字:&nbsp;&nbsp;<s:textfield class="title1.1" name="paper.keywords"></s:textfield>
							<!--<INPUT class="title1.1" type=text value="">-->
					</p>
					<p class="title4">
						URL:&nbsp;&nbsp;<s:textfield  name="paper.url"></s:textfield>
						<!--<INPUT class="title1.1" type=text value="">-->
						&nbsp;&nbsp;&nbsp;&nbsp;出版社:&nbsp;&nbsp;<s:textfield  name="paper.publisher"></s:textfield>
							<!--<INPUT class="title1.1" type=text value="">-->
					</p>
					<p class="title4">
						标签:&nbsp;&nbsp;<s:textfield  name="paper.tips"></s:textfield>
					</p>
					<p class="title4" style="vertical-align:top">
						摘要:&nbsp;&nbsp;<s:textarea style="width:390px;height:100px;margin-top:10px"  name="paper.abstract_"></s:textarea>
							<!--<INPUT class="title1.1" type=text value="">-->
					</p>
					<s:submit value="保存修改" cssClass="links" align="center"></s:submit>
				</div>
			</s:form>

			 <%
			   List aList = (List)request.getAttribute("attaches"); //取得list
			   int size = aList.size();  
			   %>

			<s:form action="editAttach" method="post" enctype="multipart/form-data">
				<div class="entry">
					<a class="title7">上传海报:</a>
					<!--<INPUT class="title8"   type=file value="上传文献" >-->
					<input name="uploadPoster" type='file' style="width:200px;"/>
						<% String attachName = null;
							for(int i=0 ;i< size;i++){
							Attach attach = ((Attach)(aList.get(i)));
							if(attach.getType().equals("poster")){
								int a = attach.getPath().lastIndexOf("\\");
			  					attachName = attach.getPath().substring(a);
							}		
			   			}
			    		%>
						已上传：<span><%= (attachName == null ? "无" : attachName) %></span>	
					<s:hidden name="attach.type" value="poster" ></s:hidden>
				</div>

				<div class="entry">
					<a class="title7">上传幻灯:</a>
					<!--<INPUT class="title8"   type=file value="上传文献" >-->
					<input name="editSlide" type='file' style="width:200px;"/>
						<% attachName = null;
							for(int i=0 ;i< size;i++){
							Attach attach = ((Attach)(aList.get(i)));
							if(attach.getType().equals("slide")){
								int a = attach.getPath().lastIndexOf("\\");
			  					attachName = attach.getPath().substring(a);
							}		
			   			}
			    		%>
						已上传：<span><%= (attachName == null ? "无" : attachName) %></span>	
					<s:hidden name="attach.type" value="slide" ></s:hidden>
				</div>

				<div class="entry">
					<a class="title7">上传视频:</a>
					<!--<INPUT class="title8"   type=file value="上传文献" >-->
					<input name="editDemo" type='file' style="width:200px;"/>
						<% attachName = null;
							for(int i=0 ;i< size;i++){
							Attach attach = ((Attach)(aList.get(i)));
							if(attach.getType().equals("demo")){
								int a = attach.getPath().lastIndexOf("\\");
			  					attachName = attach.getPath().substring(a);
							}		
			   			}
			    		%>
						已上传：<span><%= (attachName == null ? "无" : attachName) %></span>	
					<s:hidden name="attach.type" value="demo" ></s:hidden>
				</div>

				<div class="entry">
					<a class="title7">上传代码:</a>
					<!--<INPUT class="title8"   type=file value="上传文献" >-->
					<input name="editCode" type='file' style="width:200px;"/>
					<% attachName = null;
							for(int i=0 ;i< size;i++){
							Attach attach = ((Attach)(aList.get(i)));
							if(attach.getType().equals("code")){
								int a = attach.getPath().lastIndexOf("\\");
			  					attachName = attach.getPath().substring(a);
							}		
			   			}
			    		%>
						已上传：<span><%= (attachName == null ? "无" : attachName) %></span>	
					<s:hidden name="attach.type" value="code" ></s:hidden>
				</div>

				<div class="entry">
					<a class="title7">上传补充:</a>
					<input name="editSpt" type='file' style="width:200px;"/>
					<% attachName = null;
							for(int i=0 ;i< size;i++){
							Attach attach = ((Attach)(aList.get(i)));
							if(attach.getType().equals("supplement")){
								int a = attach.getPath().lastIndexOf("\\");
			  					attachName = attach.getPath().substring(a);
							}		
			   			}
			    		%>
						已上传：<span><%= (attachName == null ? "无" : attachName) %></span>	
					<s:hidden name="attach.type" value="supplement" ></s:hidden>
				</div>

				<div class="entry">
					<div>
						<!--<a href="#" class="links" align="center">确定上传</a>-->
						<s:submit value="保存附件" cssClass="links" align="center"></s:submit>
						
					</div>
				</div>
				</s:form>
			</div>
			

			<div class="post"></div>
		</div>
		<!-- end #content -->
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
	 -->	</li>
				<li>
					<h2>今日热门</h2>
					<ul>
						<li><a href="#">学霸老李和金丝肉松饼不得不说的故事</a>
						</li>
						<li><a href="#">科学家魏林溪关于重庆糍粑的最新发现</a>
						</li>
						<li><a href="#">南京小偷猖獗，赵濛同学有话要说</a>
						</li>
						<li><a href="#">李兵全面解读解读: 小孩说谎话，尿尿会分叉</a>
						</li>
						<li><a href="#">大师李全民的10小时速成PS教程</a>
						</li>
						<li><a href="#">wow老李第一人称视角教学</a>
						</li>
						<li><a href="#">健美教练魏林溪给初学者的7点建议</a>
						</li>
						<li><a href="#">梦幻西游最美女玩家赵濛精彩图集</a>
						</li>
						<li><a href="#">安卓开发入门经典——李全民</a>
						</li>
						<li><a href="#">李兵：女生的心思你不会猜</a>
						</li>
					</ul></li>
			</ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
	<div id="footer">
		<p>
			Copyright (c) 2008 software.nju.edu.cn All rights reserved. Design by
			<a href="http://www.freecsstemplates.org/">4+2开发小组</a>.
		</p>
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
