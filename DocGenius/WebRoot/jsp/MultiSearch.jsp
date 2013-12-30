<%@ page language="java" import="java.util.*,entity.Paper" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Familiar  by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/MultiSearch.css" rel="stylesheet" type="text/css" media="screen" />
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
				<li><a href="getMyPapers" class="first">我的论文</a></li>
				<li ><a href="ImportDocuments.jsp">文献录入</a></li>
				<li ><a href="MyProfile.jsp">个人资料</a></li>
				<li><a href="MyStatistics.jsp">统计</a></li>
				<li><a href="MyDrafts.jsp">草稿</a></li>
				<li class="current_page_item"><a href="#">多条件查询</a></li>
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
		  <!-- 
		        <div class="entry1">
				<tr>
				<td class="title2" style="font-size:30px; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;多重查询</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
                </div>
           -->      
                <!--  
		        <select>
		        <%int type = 0;%>
		            <% 
		                List list = (List)request.getAttribute("Documents_kinds"); //取得list
		                list = new ArrayList();//使用时请去掉此行
		                list.add("aaa");//使用时请去掉此行
		                for(int i=0;i<list.size();i++){
		            %>
		                <option value="<%=i%>" style="font-size:15px;"><%=list.get(i)%></option>
		            <% 
		                }
		            %>
		        </select>
		        -->
                
                <div  class="entry">
				<tr>
				<td class="title4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类别：</td>
				<td>
				    <select name="文献分类" class="select" onchange="selChange(this)" style="width:155px; height:28px; margin-top:5px; margin-bottom:5px; border:1px medium #000066; border-color:#FFFFFF">
					             <option value="0" style="font-size:15px;"selected="selected">请选择文献类型</option>
					             <option value="1" style="font-size:15px;">图书</option>
					             <option value="2" style="font-size:15px;">图书章节</option>
					             <option value="3" style="font-size:15px;">期刊</option>
					             <option value="4" style="font-size:15px;">会议</option>
					             <option value="5" style="font-size:15px;">学位论文</option>  
					             <option value="6" style="font-size:15px;">技术报告</option>
					             <option value="7" style="font-size:15px;">在线资源</option> 
			         </select>
			    </td>
			    <td class="title3" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			         年份：</td>
			    <s:select list="{'年份不详','1900以前','1901-1910','1911-1920','1921-1930','1931-1940','1941-1950',
					'1951-1960','1961-1970','1971-1980','1981-1990','1991-2000','2001','2002','2003','2004',
					'2005','2006','2007','2008','2009','2010','2011','2012','2013'}" 
					style="width:155px; height:28px; margin-left:0px; border:1px medium #000066; border-color:#FFFFFF; margin-top:5px; margin-bottom:5px;"
					cssClass="year" theme="simple" headerKey="00" headerValue="请选择年份" name="paper.year"></s:select>
			    </div>

			    
			    
			    <div class="entry">
				<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：</td>
				<td><INPUT class="title1" type=text value="" style="margin-top:5px; margin-bottom:5px;"></td>
				<td class="title5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				关键词：</td>
				<td><INPUT class="title1" type=text value="" style="margin-top:5px; margin-bottom:5px;"></td>
				</tr>
			    </div>
			    
			    <div class="entry">
<div><a href="#" class="links" align="center">提交查询</a></div>
				</div>
		  </div>

			<div class="post">
		
			</div>
			
			
			
			
			   <%
   			   List aList = (List)request.getAttribute("myPapers"); //取得list
   			   aList = new ArrayList();
   			   int size = aList.size();
   			   //输出list中的全部内容，每个Member对象一行
   			   for(int i=0 ;i< size;i++){
   			   int a=((Paper)(aList.get(i))).getPaperId();
               %>
   			<s:form>
            	<div class="post">		
				<h2 class="title"><a href="#"><%=((Paper)aList.get(i)).getTitle()%></a></h2>
				<p class="meta"><%=((Paper)aList.get(i)).getPublisher()%>&nbsp; <a href="#">作者：<%=((Paper)aList.get(i)).getAuthor()%></a></p>
					<p><a>摘要：</a><%=((Paper)aList.get(i)).getAbstract_()%></p>
					<div>
						<div style="margin-bottom:10px;">
						<s:hidden name="paperId" value="a"></s:hidden>
						</div>
					</div>
				</div>
				<div class="entry"></div>
			</s:form>
            <%
            }
            %>
			
			
			
			
			<div class="post">
				<h2 class="title"><a href="#" style="margin-left:210px; font-weight:bold; margin-bottom:30px; color:#008888;">查询结果:</a></h2>
				<div class="entry"></div>
				<p class="meta"><a href="#" style="color:#FFFFFF; text-decoration: none;font-size:23px;">关于测试驱动开发&nbsp; </a><a href="#">作者：李兵</a>
				<s:label value="评分:" cssClass="point_label"></s:label>
				<s:label value="4.5" cssClass="point"></s:label>
				</p>
				<div class="">
					<p><a>摘要：</a>测试驱动开发，英文全称Test-Driven Development，简称TDD，是一种不同于传统软件开发流程的新型的开发方法。它要求在编写某个功能的代码之前先编写测试代码，然后只编写使测试通过的功能代码……</p>
			  </div>
		  </div>
		  
			<div class="post">
				<p class="meta"><a href="#" style="color:#FFFFFF; text-decoration: none;font-size:23px;">敏捷软件之弊 &nbsp; </a><a href="#">作者：李东煦</a>
				<s:label value="评分:" cssClass="point_label" ></s:label>
				<s:label value="4.5" cssClass="point"  style="text-align:right"></s:label>
				</p>
				<div class="">
					<p><a>摘要：</a></>简单的说，敏捷开发是一种以人为核心、迭代、循序渐进的开发方法。在敏捷开发中，软件项目的构建被切分成多个子项目，各个子项目的成果都经过测试，具备集成和可运行的特征。换言之……。</p>
			</div>
		  </div>
		  
		  <div class="post">
				<p class="meta"><a href="#" style="color:#FFFFFF; text-decoration: none;font-size:23px;">
				开源软件的阴谋&nbsp;</a> <a href="#">作者：李全民</a>
				<s:label value="评分:" cssClass="point_label"></s:label>
				<s:label value="4.8" cssClass="point"></s:label>
				</p>
				<div class="">
					<p><a>摘要：</a>开放源码软件《open-source》是一个新名词，它被定义为描述其源码可以被公众使用的软件，并且此软件的使用，修改和分发也不受许可证的限制。开放源码软件通常是有copyright的，它的许可证可能……</p>
				</div>
			</div>
			
		</div><!-- end #content -->
				<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2>热门标签</h2>
					<p style="color: #8A8A8A;">开源 ssh jsp 敏捷 hibernate structs spring 框架 javascript ajax 架构
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
