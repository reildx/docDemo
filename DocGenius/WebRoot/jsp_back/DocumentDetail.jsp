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
<link href="css/MyDocuments.css" rel="stylesheet" type="text/css" media="screen" />
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
				<h2 class="title"><a href="#">敏捷软件之弊 </a></h2>
				<p class="meta">南京大学软件学院 &nbsp; <a href="http://blog.csdn.net/jinzheng069/article/details/12756641">作者：江南晚来客</a>
				      <div>
				            <a href="getMyPapers" class="title2">返回我的文献</a>
				            &nbsp;&nbsp;&nbsp;
				            <!-- <input type="submit" value="编辑文献" /> -->
				      </div>
				</p>
				<div class="entry">
					<p><a>摘要：</a></>简单的说，敏捷开发是一种以人为核心、迭代、循序渐进的开发方法。在敏捷开发中，软件项目的构建被切分成多个子项目，各个子项目的成果都经过测试，具备集成和可运行的特征。换言之，就是把一个大项目分为多个相互联系，但也可独立运行的小项目，并分别完成，在此过程中软件一直处于可使用状态。</p>
					<p>敏捷建模（Agile Modeling，AM）的价值观包括了XP（Extreme Programming：极限编程）的四个价值观：沟通、简单、反馈、勇气，此外，还扩展了第五个价值观：谦逊。 </p>
					<p>敏捷这个含着金钥匙诞生的“霹雳娇娃”似乎是软件开发行业的救星，从头到脚、从里到外无不闪着金光，透着与众不同。但是，我们需要知道的是，敏捷软件开发并非软件开发行业的“银弹”，因为，软件行业所谓的“银弹”永远不会存在。（推荐大家看《人月神话》的没有银弹一章）

        那么，这个集万千宠爱于一身的敏捷开发难道就没有什么瑕疵吗？当然不可能，故本文列出其可能存在的弊端，有以下几项：

1.       规模适用性：不适合大型项目

2.       性能适用性：如系统有比较高的关键性、可靠性、安全性方面的要求，则可能不完全适合

3.       组织结构适用性：组织结构的文化、人员、沟通则决定了敏捷方法是否适用。比如敏捷对人员的素质要求比较高，组织文化必须支持谈判人员彼此信任。传统的分工基本上是每人负责一个模块，敏捷要求代码共有。 而敏捷要求结对，这是对沟通能力的一个考验 。同时敏捷要求TDD，对开发人员能力要求比较高。

4.       很难把“敏捷”用好：很多团队都只选用Scrum中浅显简单的部分应用，例如短迭代和每日例会，更困难而且也是更重要的实践——如回顾和改进——就不管不顾了。

5.       敏捷依然不是“银弹”：没有那种开发方式可以放之四海而皆准，只有不断的被实践才会有更好的发展

6.       失之毫厘谬以千里的方案：项目初期的大量假定或者快速收集需求可能导致项目走入误区，特别是客户对其自身需要毫无概念的情况下。与之类似，人之天性很容易造成某个人成为主导并将项目目标和设计引入错误方向的境况。开发者经常能把不恰当的方案授予客户，并且直到最后发现问题前都能获得客户认同。

7.     难以让客户接受敏捷：我们没有依据能直接说明敏捷软件开发是可靠有效有保证的。

 

还有一些其他的小道看法：

1. 技术负债在敏捷团队中会快速的膨胀。

2. 敏捷软件开发团队会想当然地认为每个团队成员都专业，称职并富有责任心。如果事实不是如此，项目开发很快会变得举步维艰。

3. 由于对敏捷开发实践的错误理解，导致团队不合理地频繁交付，疲于奔命。

4. 实施敏捷的门槛太高，敏捷开发需要更强的团队和个人的纪律性，勇于承诺和高度的公开性，但对一个不成熟的组织来说这个门槛太高。

5. 绩效差的团队成员很难在高度公开的敏捷团队中掩饰自己能力的不足。好的团队往往能够采取一定的措施来帮助这类成员。但如果没有采取措施，这些成员往往会想方设法通过消极怠工来掩饰自己能力的不足。

6. 敏捷团队容易过份关注眼前的短期目标，而忽视长期的战略目标。尽管在短期内能够取得成功，长期注定还是会失败。

7. Product Owner承担了太多的责任，不堪重负，从而成为团队的瓶颈。

8. 敏捷的效用被过度夸大，大家的期望值太高，很多人认为导入敏捷能以最小的投入解决实际开发中的所有问题。

9. 可能出现另一种形式的“相互诟病”。成功的敏捷开发团队一般不会成为产品开发的瓶颈，因此其他部门不能以这个为借口来指责开发团队，但是这有可能进一步演变成为政治游戏。

10. 当Product Owner开始决定开发的方向，他就会被过度授权。敏捷开发中缺乏足够的审查和平衡机制。

11. 敏捷实践大多是针对程序员的，很难在组织内平衡工作量。缺乏对团队中的非程序员提供更好的文档以及培训支持。


 

 

        不过，敏捷软件虽然有以上的这些可能的问题，但是毕竟它的高效、高质量是大家有目共睹的。所以大家需要深刻理解敏捷开发的实质，多多实践，谨慎且有效地使用“敏捷”给你的软件赋予生命力吧！</p>
					<div><a href="getMyPapers" class="links">返回我的文献</a></div>
			</div>
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
     function change(){
        document.getElementById("name").value = "退出";
    }
    
    function changeback(){
        document.getElementById("name").value = "欢迎您，文献精灵";
    }
</script>

</html>
