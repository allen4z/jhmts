<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="javabean.SearchResult" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>站内搜索_赤峰聚和蒙脱石有限责任公司</title>
<meta content="站内搜索_赤峰聚和蒙脱石有限责任公司" name="keywords" />
<meta content="站内搜索_赤峰聚和蒙脱石有限责任公司" name="description" />
<link rel="stylesheet" rev="stylesheet" href="<%=request.getContextPath()%>/css/plugin/search.css" type="text/css" media="all" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/system.js" ></script>
</head>
<body>
<%SearchResult[] rs = (SearchResult[])request.getAttribute("results");
String querrys = (String)request.getAttribute("querrys");
int sumPage = request.getAttribute("sumPage")==null?0:(Integer)request.getAttribute("sumPage");%>
<div id="head">
	<div id="logo">
		<h1><a href="http://www.cfmts.com"><img src="<%=request.getContextPath()%>/img/logo.png">赤峰聚和蒙脱石有限责任公司</a></h1>
	</div>
</div>
<form action="<%=request.getContextPath()%>/PluginCtrl" method="post" name="page_form">
<input type="hidden" name="page" value="SearchPage"></input>
  	<div id="dedenews">
		<div id="newtitle" style="float:left;">搜索结果：</div>
		<div id="news" style="float:left;">
		 <%if(sumPage>1){%><%@ include file="../page.jsp"%>
		 <%}else if(rs==null){%>没有符合条件的搜索结果。
		 <%}else if(rs.length==0){%>没有符合条件的搜索结果。
		 <%}else{%>搜索结果：共有<font color="red"><%=rs.length%></font>条记录符合条件。<%}%>
			<div class="homeSearch">
				<input type="text" class="input1" name="search_txt" value="<%=querrys %>"/>
				<input type="submit" value="搜索" class="input2"/>
			</div>
		</div>
	</div>
<!-- 主体开始 -->
<!--main page begin--><%if(rs!=null&&rs.length>0){%>
<div class="indexbody">
	<div class="indexbodysecond">
		<div class="productviewtitle">
			<div class="nav"></div>
			<div class="postleft">
       	<%for(int i=0;i<rs.length;i++){%>	
				<div class="postinfo">
					<div class="posthead">
						<h1><a href="<%=rs[i].getUrl() %>" target="_blank"><%=rs[i].getTitle()%></a></h1>
						<small class="postauthor">作者: <%=rs[i].getAuthor() %> </small>
							<p class="postdate">
							<small class="day"><%=rs[i].getDay() %></small>
							<small class="month"><%=rs[i].getMonth() %>月</small>
							<small class="year"><%=rs[i].getYear() %></small>
							</p>
					</div>
					<div class="postcontent">
						<p><%=rs[i].getContent()%>...</p>
						<p class="readinfo"><a href="<%=rs[i].getUrl() %>" target="_blank">阅读全文(<%=rs[i].getCnt() %>字)</a></p>	
					</div>
				</div>
			<%}%>
			</div>
			<div style="margin-left:20px;"><img src="img/plugin/infobottom001.png"></img></div>			
		</div>
	</div>
	<div class="infograybottom"></div>		
</div><%}%>
<!--main page end-->
<!-- 主体结束 -->
</form>
<%@ include file="../footer.jsp"%>
</body>
</html>