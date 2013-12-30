<%@ page language="java" import="java.util.*,entity.Paper" pageEncoding="utf-8"%>
<%@page import="java.util.*,entity.User"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Familiar  by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/AdminUser.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    <s:submit  id="name" value="欢迎您，管理员" cssClass="name" 
			onmouseover="change()" onmouseout="changeback()">
	</s:submit>
	<div id="logo">
		<h1><a href="#">管理员配置</a>
		</h1>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="header">
		<div id="menu">
			<ul>
				<li><a href="AdminKind.jsp">文献种类</a></li>
				<li><a href="AdminInfo.jsp">文献信息</a></li>
				<li><a href="AdminComment.jsp">详细评价</a></li>
				<li class="current_page_item"><a href="AdminUser.jsp">用户列表</a></li>
				<li><a href="AdminQuote.jsp">引用关系</a></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="search">
		    <p style="font:15px;">系统时间：<%java.util.Date now=new java.util.Date();  out.println(now);  %> </p>
		</div>
		<!-- end #search -->
	</div>
	<!-- end #header -->
	<!-- end #header-wrapper -->
	<div id="page">
		<div id="content">
		<h2 class="title">用户列表：</h2>
		
<!--  
<table class=""  width="100%" border="1" >
  <tr>
    <th>用户编号</th>
    <th>用户密码</th>
  </tr>
   <%
   List list = (List)request.getAttribute("list"); //取得list
   list = new ArrayList();//使用时请去掉此行
   int size = list.size();
   System.out.println("size = "+size);
   //输出list中的全部内容，每个Member对象一行
   for(int i=0 ;i< size;i++){//现在版本的User实体只有getUserId和getPassword方法，其余请再添加
   %>
     <tr>
       <td><%=i%></td>  <!-- 把i替换为 ((User)list.get(i)).getUserId() -->
       <td><%=i%></td>  <!-- 把i替换为 ((User)list.get(i)).getPassword() -->
     </tr>
   <% 
   }
   %>
</table>
-->  
		    
		    <!-- 上边部分是真正要用的table；下面的table只为看效果 -->
		    
		    <table class="table" id="table">
					    <tr>
					        <td><input type="hidden"></td>  
					        <td onmousedown="change()">ID</td>
					        <td>用户名</td>
					        <td>密码</td>
					        <td>用户权限</td>
					    </tr>
					    <tr>
					        <td><input type="checkbox"/></td>  
					        <td>01</td>
					        <td>杀哥必挂科</td>
					        <td>123456</td>
					        <td>普通用户</td>
					    </tr>
					    <tr>
					        <td><input type="checkbox"/></td>  
					        <td>02</td>
					        <td>早死早超生</td>
					        <td>123456</td>
					        <td>普通用户</td>
					    </tr>
					    <tr>
					        <td><input type="checkbox"/></td>  
					        <td>03</td>
					        <td>江南晚来客</td>
					        <td>123456</td>
					        <td>普通用户</td>
					    </tr>
				</table>
			
			<table height="100px">
			<tr>
			   <td>
			      <s:submit id="b2" style=" " value="删除选定用户" style="margin-left:15px;"></s:submit>
			   </td>
		    </tr>
		    </table>
		    
		    <table height="100px">
		    <tr>
		       <td>
			      <h2 class="title">新增用户：</h2>
			   </td>
			</tr>
			<tr>
			   <td>
			      <h3 class="title">用户名：</h3>
			   </td>
			   <td>
			      <s:textfield cssclass="select" value="" id="text" 
			         style="margin-left:0px;">
			      </s:textfield>
			   </td>
			   <td>
			      <h3 class="title" style="margin-left:30px;">密码：</h3>
			   </td>
			   <td>
			      <s:textfield cssclass="select" value="" id="text" 
			         style="margin-left:20px;">
			      </s:textfield>
			   </td>
		    </tr>
		    <tr>
		       <td>
			      <s:submit id="b2" style=" " value="确定增加" style="margin-left:10px;"></s:submit>
			   </td>
		    </tr>
		    </table>
            <div class="entry">
            </div>
  
		</div><!-- end #content -->

		<div id="sidebar">
			<ul>
				<li>
					<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日天气</h2>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <iframe src="http://m.weather.com.cn/m/pn6/weather.htm " width="140" height="18" 
                      marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" 
                      allowtransparency="true" scrolling="no"  style="background: #444444;">
                      </iframe>
				</li>
			</ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
			
		<div id="footer">
		   <p>Copyright (c) 2008 software.nju.edu.cn All rights reserved. Design by <a href="#">4+2开发小组</a>.</p>
	    </div>
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
    function selChange(obj)
    {
        var value = obj.options[obj.selectedIndex].value;// 选中的value值
        //alert(value);
        if(value == 1){//图书
            document.getElementById("text").value = "图书";
        }
        if(value == 2){//图书章节
            document.getElementById("text").value = "图书章节";
        }
        if(value == 3){//期刊
            document.getElementById("text").value = "期刊";
        }
        if(value == 4){//会议
            document.getElementById("text").value = "会议";
        }
        if(value == 5){//学位论文
            document.getElementById("text").value = "学位论文";
        }
        if(value == 6){//技术报告
           document.getElementById("text").value = "技术报告";
        }
        if(value == 7){//在线资源
           document.getElementById("text").value = "在线资源";
        }
    }
</script>
</html>
