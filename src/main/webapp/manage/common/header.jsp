
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	var t = setInterval("DateDemo()", 1000);
	function DateDemo() {
		var today = new Date();
		today = today.toLocaleString();
		document.getElementById("time").innerHTML = today;
	}
	function exit(){
		window.location.href="/logout";
	}
</script>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<div id="header" class="wrap">
	<div id="logo">
		<img src="${ctx}/images/logo.gif">
	</div>
	<div class="help">
		
		<a href="${ctx}/IndexServlet?methodname=findAll">返回前台页面</a> <a
			href="${ctx}/LogoutServlet">退出</a> 
           <a style="cursor:pointer" onclick="exit()" >退出登录</a>
	</div>
	<div class="navbar">
		<ul class="clearfix">
			<li ${param.cassflag eq 0?"class='current'":""}><a
				href="${ctx}/IndexServlet?methodname=index&cassflag=0">首页</a></li>
			<li ${param.cassflag eq 1?"class='current'":""}><a
				href="${ctx}/UserServlet?methodname=findAll&cassflag=1">用户</a></li>
			<li ${param.cassflag eq 2?"class='current'":""}><a
				href="${ctx}/ProductServlet?methodname=findAll&cassflag=2">商品</a></li>
			<li ${param.cassflag eq 3?"class='current'":""}><a
				href="${ctx}/OrderServlet?methodname=findAll&cassflag=3">订单</a></li>
			<li ${param.cassflag eq 4?"class='current'":""}><a
				href="${ctx}/MessageServlet?methodname=findAll&cassflag=4">留言</a></li>
			<li ${param.cassflag eq 5?"class='current'":""}><a
				href="${ctx}/NewsServlet?methodname=findAll&cassflag=5">新闻</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	
	<div class="welcome wrap">
		管理员 ${sessionScope.user.username} 您好，今天是<span id="time"></span>，欢迎回到管理后台。
	</div>
</div>
<div id="position" class="wrap">
	您现在的位置：<a href="${ctx}/manage/common/NewFile.jsp">易买网</a> &gt; 管理后台
</div>

