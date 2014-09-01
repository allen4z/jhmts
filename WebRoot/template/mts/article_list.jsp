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
<link href="<cms:webroot/>/css/article_list.css" rel="stylesheet" type="text/css" />


</head>

<body>
<div id="main_warp">
<div id="main">

	<!-- 页头Start -->
   	<div id="jh_head">
		<%@ include file="head.jsp"%>
    </div>
    <!-- 页头End -->
    
 <div id="list_main">
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
	</cms:choose></cms:foreach></div>
	<div class="b">
		<div class="h2">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td align="center"><b>标题</b></td>
				<td width="400"> </td>
				<td align="center"><b>日期</b></td>
			  </tr>
			</table>
		</div>
		<div class="bin">
						<ul class="list"><cms:arlist>
   							<li <cms:if test="${article.top}">class="up"</cms:if>><span class="date">
				<cms:formatdate format="yyyy-MM-dd" datetime="${article.creatime}" /></span>
				<a href="${article.url}" target="_blank">${article.title}</a>
				<cms:if test="${article.top}"><img src="<cms:webroot/>/images/up.gif" /></cms:if>
				</li>
				</cms:arlist>
			</ul>
			<cms:if test="${totalpage>1}"><div><%@ include file="../system/page/page2.jsp"%></div></cms:if>
		</div>
	</div>
	<!-- 内容区域结束 -->
	</div>
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