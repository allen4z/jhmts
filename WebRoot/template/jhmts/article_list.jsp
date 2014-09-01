<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/cms" prefix="cms" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>赤峰聚合蒙脱石有限责任公司</title>
<meta name="robots" content="all" />
<meta name="keywords" content="蒙脱石、膨润土、蒙脱石生产、蒙脱石产品、蒙脱石销售、膨润土开采、膨润土加工" />
<meta name="description" content="蒙脱石、膨润土、蒙脱石生产、蒙脱石产品、蒙脱石销售、膨润土开采、膨润土加工" />
<meta name="Identifier-URL" content="http://www.netgather.com" />
<link rel="Shortcut Icon" href="/favicon.ico" type="image/x-icon" />
<link rel="Bookmark" href="/favicon.ico" type="image/x-icon" />
<link href="<cms:webroot/>/css/reset.css" rel="stylesheet" type="text/css" />
<link href="<cms:webroot/>/css/webmain.css" rel="stylesheet" type="text/css" />
<link href="<cms:webroot/>/css/ddsmoothmenu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<cms:webroot/>/scripts/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<cms:webroot/>/scripts/jquery.KinSlideshow-1.2.1.js"></script>
<script type="text/javascript" src="<cms:webroot/>/scripts/webtry_roll.js"></script>
<script type="text/javascript" src="<cms:webroot/>/scripts/ddsmoothmenu.js"></script>
<script type="text/javascript">
ddsmoothmenu.init({
	mainmenuid: "MainMenu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})
</script>
</head>
<body>
<div id="wrapper">
   <%@ include file="head.jsp"%>
  <div id="page_main" class="clearfix">
    <div class="page-right">

      <div class="site-nav">
      	<span>当前位置 : </span>
		<cms:foreach var="col" items="${parentcols}">
		<cms:choose>
		<cms:when test="${currentcnt==cnt}"><a href="${col.link}" target="_blank"><span class="current">${col.name}</span></a></cms:when>
		<cms:otherwise><a href="${col.link}" target="_blank">${col.name}</a> > </cms:otherwise>
		</cms:choose></cms:foreach>
	  </div>
	  
      <div class="page-news">
      <table border="0" align="center">
      <tr><th class="news-time">日期</th><th class="news-title">标题</th></tr>

		<cms:arlist>
			<tr>
	   			<td <cms:if test="${article.top}"> class="time-list"</cms:if>><span class="date">
					<cms:formatdate format="yyyy-MM-dd" datetime="${article.creatime}" /></span>
				</td>
				<td>
					<a href="${article.url}" target="_blank">${article.title}</a>
					<cms:if test="${article.top}"><img src="<cms:webroot/>/images/up.gif" /></cms:if>
				</td>
			</tr>
		</cms:arlist>

      </table>
      
	<div class="page_list">
		<cms:if test="${totalpage>1}"><div><%@ include file="../system/page/page2.jsp"%></div></cms:if>
	</div>
      </div>
    </div>
    <div class="page-left">
      <div class="left-search">
      <%@ include file="search.jsp"%>
      </div>
      <div class="left-contact">
       <%@ include file="copyinfo.jsp"%>
      </div>
      <img src="<cms:webroot/>/images/tel.gif" width="240" height="59" alt="联系我们" />
    </div>
  </div>
   <%@ include file="foot.jsp"%>
  </div>
</div>
</body>
</html>