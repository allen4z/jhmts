<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/cms" prefix="cms" %>
  <h2><span>站内搜索</span></h2>
        
<form id="sitesearch" action="http://${header["host"]}${pageContext.request.contextPath}/PluginCtrl?page=SearchPage" method="post">
	请输入您想搜索的内容:
	<input name="search_txt" type="text" id="searchtext" />
	<input type="submit" value="" id="searchbutton" />
</form>