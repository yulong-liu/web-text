<%@ page  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
	<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css"/>
	

  </head>
  
  <body>
      <!-- 头部 -->
      <%@ include file="/manage/common/header.jsp"%>
       
         
        <div id="main" class="wrap">
         
            <%@ include file="/manage/common/left.jsp"%>
               <!-- 右边 -->
            <div class="clear"></div>
        </div>
       
      
       <!-- 底部 -->
       
             <%@ include file="/manage/common/footer.jsp"%>
  </body>
</html>
