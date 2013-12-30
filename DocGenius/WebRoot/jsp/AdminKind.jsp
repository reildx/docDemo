<%@ page language="java" import="java.util.*,entity.Paper" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Familiar  by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/AdminKind.css" rel="stylesheet" type="text/css" media="screen" />
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
				<li class="current_page_item"><a href="AdminKind.jsp">文献种类</a></li>
				<li><a href="AdminInfo.jsp">文献信息</a></li>
				<li><a href="AdminComment.jsp">详细评价</a></li>
				<li><a href="AdminUser.jsp">用户列表</a></li>
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
		<h2 class="title">删改文献种类:</h2>
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
		    
		    <!-- 上边部分是真正要用的下拉框；下面的下拉框只为看效果 -->
		    <table height="100px">
		       <tr>
		          <td>
		             <select name="文献分类" class="select" onchange="selChange(this)" style="margin-left:0px; border:1px medium #000066; border-color:#FFFFFF">
					             <option value="0" style="font-size:15px;"  selected="selected">请选择文献类型</option>
					             <option value="1" style="font-size:15px;">图书</option>
					             <option value="2" style="font-size:15px;">图书章节</option>
					             <option value="3" style="font-size:15px;">期刊</option>
					             <option value="4" style="font-size:15px;">会议</option>
					             <option value="5" style="font-size:15px;">学位论文</option>  
					             <option value="6" style="font-size:15px;">技术报告</option>
					             <option value="7" style="font-size:15px;">在线资源</option> 
			         </select>
			      </td>
			      <td>
			          <s:label cssclass="select" value="修改：" style="margin-left:20px; "></s:label>
			      </td>
			      <td>
			         <s:textfield cssclass="select" value="" id="text" 
			         style="margin-left:15px;"></s:textfield>
			      </td>
			      <td>
			         <s:submit id="b1" style=" " value="确定修改" style="margin-left:20px;"></s:submit>
			      </td>
			      <td>
			         <s:submit style=" " value="删除该条分类" style="margin-left:25px;"></s:submit>
			      </td>
		    </tr>
		    <tr>
			      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      </td>
			</tr>
			      
		    <tr>
			      <td><h2 class="title">新增文献种类:</h2>
			      </td>
			</tr>
			<tr>
			      <td>
                       <s:textfield cssclass="select" value="" id="text" 
			           style="margin-left:0px;"></s:textfield>
			      </td>
			      <td>
			         <s:submit id="b2" style=" " value="确定修改" style="margin-left:15px;"></s:submit>
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
