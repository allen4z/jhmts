<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
<title>赤峰聚和蒙脱石有限责任公司CMS系统后台管理</title>
<meta content="赤峰聚和蒙脱石有限责任公司CMS系统后台管理" name="keywords" />
<meta content="赤峰聚和蒙脱石有限责任公司CMS系统后台管理" name="description" />
<link href="css/cmslogin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/system.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/cms.js"></script>
</head>
<%String userName=(String)request.getAttribute("userName");
if (userName == null) {
	userName = "";
}%>
<body onload="initInf();">
<form action="<%=request.getContextPath()%>/MainCtrl" onsubmit="return submitLogin();" method="post">
<!-- input hidden begin -->
<input type="hidden" name="page" value="LoginPage"></input>
<input type="hidden" id="cms_login" value="cms_login_reload"></input>
<input type="hidden" id="inf" value="<%=request.getAttribute("inf")%>"></input>
<!-- input hidden begin -->
<div style="margin-top:20px;">
<div id="titles"></div>
<span id="signInBody">
<span id="titleimage"></span>
<span class="logininfo"><br/>请登录到您的帐户!&nbsp;&nbsp;&nbsp;</span>
<span class="info">
<div class="infolistimage" id="infolistimagea"><span><a href="#" ><b>质量为先！</b></a></span></div>
<div class="infolistimage" id="infolistimageb"><span><a href="#" ><b>信誉为重！</b></a></span></div>
<div class="infolistimage" id="infolistimagec"><span><a href="#" ><b>管理为本！</b></a></span></div>
<div class="infolistimage" id="infolistimaged"><span><a href="#" ><b>服务为诚！</b></a></span></div>
</span>
<span class="logininput">
<div id="logininputbg" class="mouse_out">
	<div class="logindiv">
	<span class="usernametype">用户名:</span>
	<span class="usernameinput"><input name="user_name" id="user_name" type="text" value="<%=userName%>"></input></span>
	</div>
	<div class="logindiv">
	<span class="usernametype">密&nbsp;&nbsp;码:</span>
	<span class="usernameinput"><input name="passwd" id="passwd" type="password"></input></span>
	</div>
</div>
<div align="center"><input type="submit" value="登&nbsp;&nbsp;录" id="loginbutton" class="out"></input></div>
</span></span>
<!--copyright begin-->	
<div class="copyright">
	<strong class="none">©&nbsp;Copyright by 
	<!--<a href="http://www.cfmts.com" target="_blank">-->
	<font color="white">赤峰聚和蒙脱石有限责任公司</font></a>
	&nbsp;&nbsp;&nbsp;©&nbsp;Final &nbsp;
	<font color="white">赤峰聚和蒙脱石有限责任公司</font></a></strong>
</div>
<!--copyright end-->
</div>
</form>
</body>
</html>
