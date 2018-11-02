<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<div id="menu-mng" class="lefter">
      <div class="box">
			<dl>
				<dt>用户管理</dt>
				<dd><em><a href="${ctx }/manage/user/user_add.jsp?cssflag=5">新增</a></em>
				<a href="${ctx }/UserServlet?methodname=findAll&cssflag=5">用户管理</a></dd>
				<dt>商品信息</dt>
				<dd><em><a href="ProductClass-add.html?cssflag=1">新增</a></em>
				<a href="${ctx }/feileiSerVrlet?methodname=findAll&cssflag=4">分类管理</a></dd>
				<dd><em><a href="${ctx }/manage/product/product_add.jsp?cssflag=4">新增</a></em>
				<a href="${ctx }/productServrlet?methodname=findAll&cssflag=4">商品管理</a></dd>
				<dt>订单管理</dt>
				<dd><a href="${ctx }/orderServrlet?methodname=findAll&cssflag=3">订单管理</a></dd>
				<dt>留言管理</dt>
				<dd><a href="${ctx }/messageServrlet?methodname=findAll&cssflag=2">留言管理</a></dd>
				<dt>新闻管理</dt>
				<dd><em><a href="${ctx }/manage/news/news_add.jsp?cssflag=0">新增</a></em>
				<a href="${ctx }/manage/news/news_list.jsp?cssflag=0">新闻管理</a></dd>
				<dd><em><a href="${ctx }/manage/Student/student_add.jsp?cssflag=0">新增</a></em>
				<a href="${ctx }/manage/Student/Student_list.jsp">学生管理</a></dd>
			</dl>
		</div>
</div>

