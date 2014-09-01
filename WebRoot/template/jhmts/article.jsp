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
		<cms:when test="${currentcnt==cnt}">
		<a href="${col.link}" target="_blank">
			<span class="current">${col.name}</span>
		</a>
		</cms:when>
		<cms:otherwise>
			<a href="${col.link}" target="_blank">${col.name}</a> > 
		</cms:otherwise>
		</cms:choose></cms:foreach>
      </div>
      
      <div class="page-single">
			<p style="LINE-HEIGHT: 25px">
				<h2 align="center">${article.title}</h2>
				<div align="center" class="date">
				<cms:formatdate format="yyyy-MM-dd HH:mm:ss" datetime="${article.creatime}" />
				<%@ include file="../system/browse_cnt.jsp"%>
				</div>
				
				<div class="txt" style="margin:40px;border:0;padding:0;letter-spacing:2px;line-height:40px;">${article.content}</div>
				
			</p>
      </div>
    </div>
    
    <div class="page-left">
    
      <!-- 
      <div class="left-about">
        <h2><span>关于我们</span></h2>
        <div id="LeftMenu" class="ddsmoothmenu-v">
          <ul>
		    <li><a href="single.html" title="组织构架"><span>组织构架</span></a></li>
		    <li><a href="single.html" title="公司历史"><span>公司历史</span></a></li>
		    <li><a href="single.html" title="联系我们"><span>联系我们</span></a></li>
          </ul>
        </div>
        <script type="text/javascript">
		ddsmoothmenu.init({
			mainmenuid: "LeftMenu", //Menu DIV id
			orientation: 'v', //Horizontal or vertical menu: Set to "h" or "v"
			classname: 'ddsmoothmenu-v', //class added to menu's outer DIV
			//customtheme: ["#804000", "#482400"],
			contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
			})
        </script>
      </div> 
      -->
      
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
</body>
</html>