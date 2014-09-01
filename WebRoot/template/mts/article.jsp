<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/cms" prefix="cms" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>聚合蒙脱石有限公司</title>
<meta content="聚合蒙脱石有限公司,蒙脱石,膨润土,蒙脱石公司,聚合,聚合蒙脱石" name="keywords" />
<meta content="聚合蒙脱石有限公司,蒙脱石,膨润土,蒙脱石公司,聚合,聚合蒙脱石" name="description" />
<link rel="shortcut icon" href="<cms:webroot/>/images/logo.ico"/>
<link href="<cms:webroot/>/css/index.css" rel="stylesheet" type="text/css" />
<link href="<cms:webroot/>/css/index_font.css" rel="stylesheet" type="text/css" />
<link href="<cms:webroot/>/css/article.css" rel="stylesheet" type="text/css" />



</head>

<body>
<div id="main_warp">
<div id="main">

	<!-- 页头Start -->
   	<div id="jh_head">
		<%@ include file="head.jsp"%>
    </div>
    <!-- 页头End -->
  
   	<div id="article_main">
	    <div class="left">
		    <!-- 左侧导航开始 -->
		    <!-- 左侧导航结束 -->
	    </div>
	    <div class="right">
			<!-- 内容区域开始 -->
			<div class="column">
				<div class="title">
					<div class="search">
						<form action="http://${header["host"]}${pageContext.request.contextPath}/PluginCtrl?page=SearchPage" method="post">
							关键字
							<input name="search_txt" type="text" class="txtSearch" />
							<input type="submit" value="搜索" class="btnSubmit" />
						</form>
					</div>
					当前位置：<cms:foreach var="col" items="${parentcols}">
					<cms:choose>
					<cms:when test="${currentcnt==cnt}"><a href="${col.link}" target="_blank"><span class="current">${col.name}</span></a></cms:when>
					<cms:otherwise><a href="${col.link}" target="_blank">${col.name}</a> > </cms:otherwise>
					</cms:choose></cms:foreach>
				</div>
										
				<div class="b">
					<div class="bin">
						<div class="binContent">
							<h3>${article.title}</h3>
								<div class="date"><cms:formatdate format="yyyy-MM-dd HH:mm:ss" datetime="${article.creatime}" />
								<%@ include file="../system/browse_cnt.jsp"%></div>
							<div class="txt">${article.content}</div>
						</div>
									
					</div>
				</div>
			</div>
			<!-- 内容区域结束 -->
		</div>
	</div>
   
    <!-- 页脚 -->
   	<div id="jh_foot">
   		<%@ include file="foot.jsp"%>
   	</div>
   	<!-- 页脚 End-->
</div>
</div>
</body>
</html>