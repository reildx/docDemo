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
<link href="css/DocumentDetail.css" rel="stylesheet" type="text/css" media="screen" />
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

	<!-- end #header -->
	<!-- end #header-wrapper -->
	<div id="page">
		<div id="content">
		  <div class="post">
				<h2 class="title"><a href="#">关于测试驱动开发我有话要说 </a></h2>
				<table width="650" cellspacing="7">
				    <tr>
				        <td>作者：</td>
				        <td>江南晚来客</td>
				    </tr>
				    <tr>
				        <td>出版社：</td>
				        <td>南京大学软件学院</td>
				        <td>&nbsp;</td>
				        <td><qw style=" color:#FFFFFF;">文章得分：</qw></td>
				        <td>
				        <!-- 
				        <input type="image" src="images/star2.gif"></input>
				        <input type="image" src="images/star2.gif" style="margin-left:-3px;"></input>
				        <input type="image" src="images/star2.gif" style="margin-left:-3px;"></input>
				        <input type="image" src="images/star2.gif" style="margin-left:-3px;"></input>
				        <input type="image" src="images/star1.gif" style="margin-left:-3px;"></input>
				         -->
				        <input type="image" src="images/s3.png"></input>
				        <input type="image" src="images/s3.png" style="margin-left:-3px;"></input>
				        <input type="image" src="images/s3.png" style="margin-left:-3px;"></input>
				        <input type="image" src="images/s3.png" style="margin-left:-3px;"></input>
				        <input type="image" src="images/s6.png" style="margin-left:-3px;"></input>
				        </td>
				        <td>4.7分</td>
				    </tr>
				    <tr>
				        <td>年份：</td>
				        <td>2013年</td>
				    </tr>
				    <tr>
				        <td>评价：</td>
				        <td>
				        <input id="p1" type="image" src="images/s1.1.png" onmouseover="in1()" onclick="click1()"></input>
				        <input id="p2" type="image" src="images/s1.1.png" onmouseover="in2()" onclick="click2()" style="margin-left:-3px;"></input>
				        <input id="p3" type="image" src="images/s1.1.png" onmouseover="in3()" onclick="click3()" style="margin-left:-3px;"></input>
				        <input id="p4" type="image" src="images/s1.1.png" onmouseover="in4()" onclick="click4()" style="margin-left:-3px;"></input>
				        <input id="p5" type="image" src="images/s1.1.png" onmouseover="in5()" onclick="click5()" style="margin-left:-3px;"></input>
				        </td>
				        <td>
				        <input type="submit" id="grade" value="0分" onmouseover="inbutton()" onmouseout="outbutton()" 
				        style="font-size:10px; color:#FFFFFF; margin-left:2px; width:50px; height:25px; background: url(../images/b15.png)"></input>
				        </td>
				        <td>
				            &nbsp;
				        </td>
				    </tr>
				</table>
				
					<p><a>摘要：</a></>简单的说，敏捷开发是一种以人为核心、迭代、循序渐进的开发方法。在敏捷开发中，软件项目的构建被切分成多个子项目，各个子项目的成果都经过测试，具备集成和可运行的特征。换言之，就是把一个大项目分为多个相互联系，但也可独立运行的小项目，并分别完成，在此过程中软件一直处于可使用状态。</p>
                <div class="entry">
					<!-- <div><a href="getMyPapers" class="links">返回我的文献</a></div> -->
			    </div>
			    
			    <p>
			        <!-- <a href="#" style="text-decoration: none;">简评</a> -->
			        <h2 style="color:#FFFFFF;">简评：</h2>
			    </p>
			    
			    <table width="220" cellspacing="1">
			         <tr>
			         <td>
			         <a href="#">西厢</a>
			         </td>
			         <td>
			         <input id="p1" type="image" src="images/s10.png" onmouseover="in1()" onclick="click1()"></input>
				     <input id="p2" type="image" src="images/s10.png" onmouseover="in2()" onclick="click2()" style="margin-left:-3px;"></input>
				     <input id="p3" type="image" src="images/s10.png" onmouseover="in3()" onclick="click3()" style="margin-left:-3px;"></input>
				     <input id="p4" type="image" src="images/s11.png" onmouseover="in4()" onclick="click4()" style="margin-left:-3px;"></input>
				     <input id="p5" type="image" src="images/s12.png" onmouseover="in5()" onclick="click5()" style="margin-left:-3px;"></input>
				     </td>
				     <td>
			         2013-12-30
			         </td>
			         </tr>
			    </table>
			    <p>
			         毕业季不能说的秘密：在幻变的生命里 岁月，原是最大的小偷。 ——《岁月神偷》
			     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;When I look into your eyes, I can hear you cry.
			    </p>
			    
			    <table width="220" cellspacing="1">
			         <tr>
			         <td>
			         <a href="#">淙峥夕箐</a>
			         </td>
			         <td>
			         <input id="p1" type="image" src="images/s10.png" onmouseover="in1()" onclick="click1()"></input>
				     <input id="p2" type="image" src="images/s10.png" onmouseover="in2()" onclick="click2()" style="margin-left:-3px;"></input>
				     <input id="p3" type="image" src="images/s10.png" onmouseover="in3()" onclick="click3()" style="margin-left:-3px;"></input>
				     <input id="p4" type="image" src="images/s10.png" onmouseover="in4()" onclick="click4()" style="margin-left:-3px;"></input>
				     <input id="p5" type="image" src="images/s11.png" onmouseover="in5()" onclick="click5()" style="margin-left:-3px;"></input>
				     </td>
				     <td>
			         2013-12-29
			         </td>
			         </tr>
			    </table>
			    <p>
			         冲着这店名，也要去吃一次！@辑熙承贞在上海一个很大的遗憾，就是没能去那家阿宝菜饭骨头汤尝尝╮(╯▽╰)╭
			    </p>
			    
			    <table width="220" cellspacing="1">
			         <tr>
			         <td>
			         <a href="#">大脚印</a>
			         </td>
			         <td>
			         <input id="p1" type="image" src="images/s10.png" onmouseover="in1()" onclick="click1()"></input>
				     <input id="p2" type="image" src="images/s10.png" onmouseover="in2()" onclick="click2()" style="margin-left:-3px;"></input>
				     <input id="p3" type="image" src="images/s11.png" onmouseover="in3()" onclick="click3()" style="margin-left:-3px;"></input>
				     <input id="p4" type="image" src="images/s12.png" onmouseover="in4()" onclick="click4()" style="margin-left:-3px;"></input>
				     <input id="p5" type="image" src="images/s12.png" onmouseover="in5()" onclick="click5()" style="margin-left:-3px;"></input>
				     </td>
				     <td>
			         2013-12-28
			         </td>
			         </tr>
			    </table>
			    <p>
			         难过的时候不如默默肚子好了，暖暖的就不会走错路。又到了一学期一度还债的时候了，阿弥陀佛~~~~~~
			    </p>
			    <p>
			    <a href="#">查看全部</a>
			    <input type="submit" value="写短评"  onclick="jump()" style="margin-left:50px;"></input>
			    </p>
			    
			    <div class="entry"></div>
			    
			    <p>
			        <h2 style="color:#FFFFFF;">详细评价：</h2>
			    </p>
			    
			    <table width="220" cellspacing="1">
			         <tr>
			         <td>
			         <a href="#">Progressing</a>
			         </td>
			         <td>
			         <input id="p1" type="image" src="images/s10.png" onmouseover="in1()" onclick="click1()"></input>
				     <input id="p2" type="image" src="images/s10.png" onmouseover="in2()" onclick="click2()" style="margin-left:-3px;"></input>
				     <input id="p3" type="image" src="images/s10.png" onmouseover="in3()" onclick="click3()" style="margin-left:-3px;"></input>
				     <input id="p4" type="image" src="images/s11.png" onmouseover="in4()" onclick="click4()" style="margin-left:-3px;"></input>
				     <input id="p5" type="image" src="images/s12.png" onmouseover="in5()" onclick="click5()" style="margin-left:-3px;"></input>
				     </td>
				     <td>
			         2013-12-30
			         </td>
			         </tr>
			    </table>
			    <p>
			       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;面对西部头名开拓者，詹姆斯因为腹股沟拉伤无法出战，韦德又刚刚复出，球队只能寄望于波什的发挥。而他不负众望，全场26投15中拿下37分，并在最后时刻奉献绝杀，帮助球队取胜。为了“三巨头“的有效运转，波什牺牲了许多，不管是上场时间还是得分都低于在猛龙时期。但球队需要他站出来时，他从未让人失望。例如上赛季总决赛第六场，例如本场。在韦德进攻不力的情况下，波什一个人扛起了全队，他的出手次数和得分均是赛季最高。第四节末段，热火执行最后一攻，韦德突破吸引防守后将球分给在三分线外等待的波什，他接球稍作调整后出手，空心入网，只给开拓者留下了0.5秒。赛后，热火主帅斯波尔斯特拉透露，他本来只想设计一个两分战术，但被波什拒绝，后者主动要求用三分绝杀。看到队友终结比赛，韦德和詹姆斯自然兴奋异常。二人上前迎住波什，一个为他披上衣服，一个为他擦汗。此时此刻，“龙王“才是热火的领袖。
			    </p>
			    
			    <table width="220" cellspacing="1">
			         <tr>
			         <td>
			         <a href="#">li</a>
			         </td>
			         <td>
			         <input id="p1" type="image" src="images/s10.png" onmouseover="in1()" onclick="click1()"></input>
				     <input id="p2" type="image" src="images/s10.png" onmouseover="in2()" onclick="click2()" style="margin-left:-3px;"></input>
				     <input id="p3" type="image" src="images/s10.png" onmouseover="in3()" onclick="click3()" style="margin-left:-3px;"></input>
				     <input id="p4" type="image" src="images/s10.png" onmouseover="in4()" onclick="click4()" style="margin-left:-3px;"></input>
				     <input id="p5" type="image" src="images/s11.png" onmouseover="in5()" onclick="click5()" style="margin-left:-3px;"></input>
				     </td>
				     <td>
			         2013-12-29
			         </td>
			         </tr>
			    </table>
			    <p>
			         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《英雄联盟》是由Riot Games公司开发的3D竞技场战网游戏，其主创团队是由实力强劲的魔兽争霸系列游戏多人即时对战自定义地图（DOTA-Allstars）的开发团队，
			         以及动视暴雪等著名游戏公司的美术、程序、策划人员组成，将DOTA的玩法从对战平台延伸到网络游戏世界。除了DOTA的游戏节奏、即时战略、团队作战外，
			         《英雄联盟》拥有特色的英雄、自动匹配的战网平台，包括天赋树、召唤师系统、符文等元素，让玩家感受全新的英雄对战。
			    </p>
			    <p>
			    <a href="#">查看全部</a>
			    <input type="submit" value="详细评价"  onclick="jump()" style="margin-left:50px;"></input>
			    </p>
			    <p>
			    <div><a href="getMyPapers" class="links">返回</a></div>
			    </p>
		  </div>
	
		</div><!-- end #content -->

		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
	<div id="footer">
		<p>Copyright (c) 2008 software.nju.edu.cn All rights reserved. Design by <a href="http://www.freecsstemplates.org/">4+2开发小组</a>.</p>
	</div>
	<!-- end #footer -->
</body>

<script type="text/javascript" >
     var value = 0;//评分数值
     var temp = 0;//记录鼠标最后停留的星级数
     
     function jump() 
     { 
        var name=prompt("请输入您的简评","") ;
        if (name!=null && name!="") 
        { 
           document.write("简评内容：" + name) ;
        } 
     } 
     
     function click1(){
        value = 1;
        document.getElementById("grade").value = "1分";
        //while(true)
        //  1+1;
        document.getElementByIdx("p1").disabled = "disabled";
        document.getElementByIdx("p2").disabled = "disabled";
        document.getElementByIdx("p3").disabled = "disabled";
        document.getElementByIdx("p4").disabled = "disabled";
        document.getElementByIdx("p5").disabled = "disabled";
        alert("!!!");
     }
     
     function click2(){
        value = 2;
        document.getElementById("grade").value = "2分";
     }
     
     function click3(){
        value = 3;
        document.getElementById("grade").value = "3分";
     }
     
     function click4(){
        value = 4;
        document.getElementById("grade").value = "4分";
     }
     
     function click5(){
        value = 5;
        document.getElementById("grade").value = "5分";
     }
     
     function inbutton(){
        temp = document.getElementById("grade").value;
        document.getElementById("grade").value = "确定";
     }
     
     function outbutton(){
        //alert(document.getElementById("p5").src);
        //if(document.getElementById("p5").src=="images/s2.1.png")
        //   document.getElementById("grade").value = "5分";
        //else if(document.getElementById("p4").src=="images/s2.1.png")
        //   document.getElementById("grade").value = "4分";
       // else if(document.getElementById("p3").src=="images/s2.1.png")
        //   document.getElementById("grade").value = "3分";
       // else if(document.getElementById("p2").src=="images/s2.1.png")
       //    document.getElementById("grade").value = "2分";
       // else if(document.getElementById("p1").src=="images/s2.1.png")
       //    document.getElementById("grade").value = "1分";
       // else
        //   document.getElementById("grade").value = "0分";
        if(temp=="0分")
           document.getElementById("grade").value = "0分";
        if(temp=="1分")
           document.getElementById("grade").value = "1分";
        if(temp=="2分")
           document.getElementById("grade").value = "2分";
        if(temp=="3分")
           document.getElementById("grade").value = "3分";
        if(temp=="4分")
           document.getElementById("grade").value = "4分";
        if(temp=="5分")
           document.getElementById("grade").value = "5分";
     }
     
     function clickbutton(){
        
     }
     
     function in1(){
        document.getElementById("p1").src = "images/s2.1.png";
        document.getElementById("p2").src = "images/s1.1.png";
        document.getElementById("p3").src = "images/s1.1.png";
        document.getElementById("p4").src = "images/s1.1.png";
        document.getElementById("p5").src = "images/s1.1.png";
        document.getElementById("grade").value = "1分";
     }
     
     function in2(){
        document.getElementById("p1").src = "images/s2.1.png";
        document.getElementById("p2").src = "images/s2.1.png";
        document.getElementById("p3").src = "images/s1.1.png";
        document.getElementById("p4").src = "images/s1.1.png";
        document.getElementById("p5").src = "images/s1.1.png";
        document.getElementById("grade").value = "2分";
     }
     
     function in3(){
        document.getElementById("p1").src = "images/s2.1.png";
        document.getElementById("p2").src = "images/s2.1.png";
        document.getElementById("p3").src = "images/s2.1.png";
        document.getElementById("p4").src = "images/s1.1.png";
        document.getElementById("p5").src = "images/s1.1.png";
        document.getElementById("grade").value = "3分";
     }
     
     function in4(){
        document.getElementById("p1").src = "images/s2.1.png";
        document.getElementById("p2").src = "images/s2.1.png";
        document.getElementById("p3").src = "images/s2.1.png";
        document.getElementById("p4").src = "images/s2.1.png";
        document.getElementById("p5").src = "images/s1.1.png";
        document.getElementById("grade").value = "4分";
     }
     
     function in5(){
        document.getElementById("p1").src = "images/s2.1.png";
        document.getElementById("p2").src = "images/s2.1.png";
        document.getElementById("p3").src = "images/s2.1.png";
        document.getElementById("p4").src = "images/s2.1.png";
        document.getElementById("p5").src = "images/s2.1.png";
        document.getElementById("grade").value = "5分";
     }
     
     function change(){
        document.getElementById("name").value = "退出";
    }
    
    function changeback(){
        document.getElementById("name").value = "欢迎您，文献精灵";
    }
</script>

</html>
