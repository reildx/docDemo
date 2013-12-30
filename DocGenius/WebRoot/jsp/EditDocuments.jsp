<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<body onload="setSelectValue()">

	<div id="logo">
		<h1>
			<a href="#">文献精灵 </a>
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
				<li><a href="getMyPapers" class="first">我的论文</a>
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

			<s:form action="uploadAttach" method="post" enctype="multipart/form-data">
				<div class="">
						<p class="title3">编辑基本信息</p>
						<!--<INPUT class="title6"   type=file value="上传文献" >-->
				</div>
			</s:form>

<!--  <s:select list="{'aa','bb','cc'}" theme="simple" headerKey="00" headerValue="00"></s:select>-->
			<s:form action="uploadFile" method="post" enctype="multipart/form-data">
				<div class="">
				
					
					<p class="title4">
						标题:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:textfield class="title1" name="paper.title"></s:textfield>
						<!--<INPUT class="title1.1" type=text value="" />-->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						作者:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:textfield class="title1" name="paper.author"></s:textfield>
						<!--<INPUT class="title1.1"type=text value="" />-->
					</p>
					
					<p class="title4" >
						年份:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:select list="{'年份不详','1900以前','1901-1910','1911-1920','1921-1930','1931-1940','1941-1950',
						'1951-1960','1961-1970','1971-1980','1981-1990','1991-2000','2001','2002','2003','2004',
						'2005','2006','2007','2008','2009','2010','2011','2012','2013'}" 
						cssClass="year" theme="simple" headerKey="00" headerValue="请选择年份" name="paper.year"></s:select>
						<!--<INPUT class="title1.1" type=text value="">-->
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							页码:&nbsp;&nbsp;&nbsp;&nbsp;
							<s:textfield cssClass="title1.1" name="paper.pages"></s:textfield>
							<!--<INPUT class="title1.1"
							type=text value="">-->
					</p>
					<p class="title4" >
						出版社:&nbsp;
						<s:textfield cssClass="title1.1" name="paper.publisher"></s:textfield>
						<!--<INPUT class="title1.1" type=text value="">-->
							&nbsp;&nbsp;&nbsp;&nbsp;关键字:&nbsp;&nbsp;&nbsp;&nbsp;
							<s:textfield cssClass="title1.1" name="paper.keywords"></s:textfield>
							<!--<INPUT class="title1.1" type=text value="">-->
					</p>
					
					<p class="title4" >
						URL:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:textfield cssClass="title1.1" name="paper.publisher"></s:textfield>
						<!--<INPUT class="title1.1" type=text value="">-->
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标签:&nbsp;&nbsp;&nbsp;&nbsp;
							<s:textfield cssClass="title1.1" name="paper.keywords"></s:textfield>
							<!--<INPUT class="title1.1" type=text value="">-->
					</p>
					
					
					
					
					<div class="entry"></div>
					
					
					
					
					<p class="title4">
						<b id="so1" style="display:none">出处:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="journal.publication" id="source1"></s:textfield>
						<b id="so2" style="display:none">出处:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="conference.publication" id="source2"></s:textfield>
						<b id="ci" style="display:none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;城市:&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="conference.city" id="city"></s:textfield>
					</p>
					
					<p class="title4">
						<b id="do1" style="display:none">DOI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="journal.doi" id="doi1"></s:textfield>
						<b id="do2" style="display:none">DOI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="conference.doi" id="doi2"></s:textfield>
						<b id="ed1" style="display:none">编辑者:&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="book.editor" id="editor1"></s:textfield>
						<b id="ed2" style="display:none">编辑者:&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="booksection.editor" id="editor2"></s:textfield>
							
					</p>
					
					<p class="title4">
						<b id="is" style="display:none">ISBN:&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="book.isbn" id="isbn"></s:textfield>
						<b id="bo" style="display:none">图书名:&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="booksection.bookName" id="book"></s:textfield>
					</p>
					
					<p class="title4">
						<b style="display:none" id="sc">学校:&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="thesis.school" id="school">
						</s:textfield>
						<b id="nu1" style="display:none">&nbsp;&nbsp;&nbsp;卷:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="journal.volume" id="number1"></s:textfield>
					</p>
					
					<p class="title4">
						<b id="nu2" style="display:none">&nbsp;&nbsp;&nbsp;期:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<s:textfield style="display:none" cssClass="title1.1" name="journal.issue" id="number2"></s:textfield>
					</p>
					
					<div class="entry"></div>
					
					<p class="title5" style="vertical-align:top">
						&nbsp;&nbsp;&nbsp;&nbsp;摘要:&nbsp;&nbsp;
						<s:textarea style="width:390px;height:100px;margin-top:10px" name="paper.abstract_"></s:textarea>
							<!--<INPUT class="title1.1" type=text value="">-->
					</p>
					<s:submit value="保存" cssClass="links"></s:submit>
				</div>
			</s:form>

			<s:form action="uploadAttach" method="post" enctype="multipart/form-data">
				<div class="entry">
					<a class="title7">上传海报:</a>
					<!--<INPUT class="title8"   type=file value="上传文献" >-->
					<s:file name="uploadPoster" class="title8"></s:file>
					<s:hidden name="attach.type" value="poster" ></s:hidden>
				</div>

				<div class="entry">
					<a class="title7">上传幻灯:</a>
					<!--<INPUT class="title8"   type=file value="上传文献" >-->
					<s:file name="uploadSlide" class="title8"></s:file>
					<s:hidden name="attach.type" value="slide" ></s:hidden>
				</div>

				<div class="entry">
					<a class="title7">上传视频:</a>
					<!--<INPUT class="title8"   type=file value="上传文献" >-->
					<!--<s:file name="uploadDemo" class="title8"></s:file>-->
					<s:file name="uploadDemo" class="title8"></s:file>
					<s:hidden name="attach.type" value="demo" ></s:hidden>
					<s:file name="uploadDemo" id="demo1" style="display:none"></s:file>
					<s:hidden name="attach.type" value="demo" ></s:hidden>
					
					<a class="title6" onclick="add()">继续添加&nbsp;</a>
					
					<s:file name="uploadDemo" id="demo2" style="display:none"></s:file>
					<s:hidden name="attach.type" value="demo" ></s:hidden>
					<s:file name="uploadDemo" id="demo3" style="display:none"></s:file>
					<s:hidden name="attach.type" value="demo" ></s:hidden>
				</div>

				<div class="entry">
					<a class="title7">上传代码:</a>
					<!--<INPUT class="title8"   type=file value="上传文献" >-->
					<s:file name="uploadCode" class="title8"></s:file>
					<s:hidden name="attach.type" value="code" ></s:hidden>
					<s:file name="uploadCode" id="code1" style="display:none"></s:file>
					<s:hidden name="attach.type" value="code" ></s:hidden>
					
					<a class="title6" onclick="add1()">继续添加&nbsp;</a>
					
					<s:file name="uploadCode" id="code2" style="display:none"></s:file>
					<s:hidden name="attach.type" value="code" ></s:hidden>
					<s:file name="uploadCode" id="code3" style="display:none"></s:file>
					<s:hidden name="attach.type" value="code" ></s:hidden>
				</div>

				<div class="entry">
					<a class="title7">上传补充:</a>
					<s:file name="uploadSpt" class="title8"></s:file>
					<s:hidden name="attach.type" value="supplement" ></s:hidden>
					<s:file name="uploadSpt" id="supplement1" style="display:none"></s:file>
					<s:hidden name="attach.type" value="supplement" ></s:hidden>
					
					<a class="title6" onclick="add2()">继续添加&nbsp;</a>
					
					<s:file name="uploadSpt" id="supplement2" style="display:none"></s:file>
					<s:hidden name="attach.type" value="supplement" ></s:hidden>
					<s:file name="uploadSpt" id="supplement3" style="display:none"></s:file>
					<s:hidden name="attach.type" value="supplement" ></s:hidden>
				</div>

				<div class="entry">
					<div>
						<!--<a href="#" class="links" align="center">确定上传</a>-->
						<s:submit value="确定上传" cssClass="links"></s:submit>
						
					</div>
				</div>
				</s:form>
			</div>
			

			<div class="post"></div>
		</div>
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
						<li><a href="#">软件工程</a>
						</li>
						<li><a href="#">计算机科学</a>
						</li>
						<li><a href="#">医学</a>
						</li>
						<li><a href="#">经济学</a>
						</li>
						<li><a href="#">法学</a>
						</li>
						<li><a href="#">机械</a>
						</li>
						<li><a href="#">语言</a>
						</li>
						<li><a href="#">人文</a>
						</li>
						<li><a href="#">其它</a>
						</li>
					</ul></li>
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

<%int value; %>
<script type="text/javascript" >
    var button = 0;
    function add(){
        if(document.getElementById("demo1").style.display=="none")
            document.getElementById("demo1").style.display="";
        else if(document.getElementById("demo2").style.display=="none")
            document.getElementById("demo2").style.display="";
        else if(document.getElementById("demo3").style.display=="none")
            document.getElementById("demo3").style.display="";
        else
            alert("最多添加四个文件！！");
    }
    
    function add1(){
        if(document.getElementById("code1").style.display=="none")
            document.getElementById("code1").style.display="";
        else if(document.getElementById("code2").style.display=="none")
            document.getElementById("code2").style.display="";
        else if(document.getElementById("code3").style.display=="none")
            document.getElementById("code3").style.display="";
        else
            alert("最多添加四个文件！！");
    }
 /*   
    function add2(){
        if(document.getElementById("video1").style.display=="none")
            document.getElementById("video1").style.display="";
        else if(document.getElementById("video2").style.display=="none")
            document.getElementById("video2").style.display="";
        else if(document.getElementById("video3").style.display=="none")
            document.getElementById("video3").style.display="";
        else
            alert("最多添加四个文件！！");
    }
*/
    
    function add2(){
        if(document.getElementById("supplement1").style.display=="none")
            document.getElementById("supplement1").style.display="";
        else if(document.getElementById("supplement2").style.display=="none")
            document.getElementById("supplement2").style.display="";
        else if(document.getElementById("supplement3").style.display=="none")
            document.getElementById("supplement3").style.display="";
        else
            alert("最多添加四个文件！！");
    }
    
    function setSelectValue(){
    	//var value = document.getElementById("paperType").value;
    	var value = <%=request.getParameter("selectedType")%>;//jz
    	//alert(value);
    	document.getElementById("selectType").value = value;
    	
    	if(value == 1){//图书
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="";
            document.getElementById("ed1").style.display="";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="";
            document.getElementById("is").style.display="";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 2){//图书章节
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="";
            document.getElementById("ed2").style.display="";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="";
            document.getElementById("bo").style.display="";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 3){//期刊
            document.getElementById("source1").style.display="";
            document.getElementById("so1").style.display="";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="";
            document.getElementById("do1").style.display="";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="";
            document.getElementById("nu1").style.display="";
            document.getElementById("number2").style.display="";
            document.getElementById("nu2").style.display="";
        }
        if(value == 4){//会议
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="";
            document.getElementById("so2").style.display="";
            document.getElementById("city").style.display="";
            document.getElementById("ci").style.display="";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="";
            document.getElementById("do2").style.display="";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 5){//学位论文
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="";
            document.getElementById("sc").style.display="";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 6){//技术报告
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 7){//在线资源
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
    }
    function selChange(obj)
    {
    	//alert(obj.value);
        var value = obj.options[obj.selectedIndex].value;// 选中的value值
        document.getElementById("paperType").value=value;
        
        
        if(value == 1){//图书
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="";
            document.getElementById("ed1").style.display="";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="";
            document.getElementById("is").style.display="";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 2){//图书章节
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="";
            document.getElementById("ed2").style.display="";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="";
            document.getElementById("bo").style.display="";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 3){//期刊
            document.getElementById("source1").style.display="";
            document.getElementById("so1").style.display="";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="";
            document.getElementById("do1").style.display="";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="";
            document.getElementById("nu1").style.display="";
            document.getElementById("number2").style.display="";
            document.getElementById("nu2").style.display="";
        }
        if(value == 4){//会议
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="";
            document.getElementById("so2").style.display="";
            document.getElementById("city").style.display="";
            document.getElementById("ci").style.display="";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="";
            document.getElementById("do2").style.display="";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 5){//学位论文
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="";
            document.getElementById("sc").style.display="";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 6){//技术报告
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        if(value == 7){//在线资源
            document.getElementById("source1").style.display="none";
            document.getElementById("so1").style.display="none";
            document.getElementById("source2").style.display="none";
            document.getElementById("so2").style.display="none";
            document.getElementById("city").style.display="none";
            document.getElementById("ci").style.display="none";
            document.getElementById("doi1").style.display="none";
            document.getElementById("do1").style.display="none";
            document.getElementById("doi2").style.display="none";
            document.getElementById("do2").style.display="none";
            document.getElementById("editor1").style.display="none";
            document.getElementById("ed1").style.display="none";
            document.getElementById("editor2").style.display="none";
            document.getElementById("ed2").style.display="none";
            document.getElementById("isbn").style.display="none";
            document.getElementById("is").style.display="none";
            document.getElementById("book").style.display="none";
            document.getElementById("bo").style.display="none";
            document.getElementById("school").style.display="none";
            document.getElementById("sc").style.display="none";
            document.getElementById("number1").style.display="none";
            document.getElementById("nu1").style.display="none";
            document.getElementById("number2").style.display="none";
            document.getElementById("nu2").style.display="none";
        }
        
    }

    </script>

</html>
