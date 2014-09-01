<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/cms" prefix="cms" %>
&nbsp;&nbsp;浏览次数：<span id="browse_cnt">&nbsp;</span>
<script type="text/javascript">
function updateBrowseCnt(txt){
	document.getElementById('browse_cnt').innerHTML=txt;
}
exeRequest('http://${header["host"]}${pageContext.request.contextPath}/PluginCtrl',
		updateBrowseCnt,
		'page=LoadBrowseCntPage&article_id=${article.id}');

function exeRequest(url,handle,v,i){
	
	var xmlHttp=new XMLHttpRequest();
	xmlHttp.onreadystatechange=function(){
		if (xmlHttp.readyState==4){
			if (xmlHttp.status==200){
				var repTxt=xmlHttp.responseText;
				handle(repTxt,i);
			}
		}
	}
	xmlHttp.open("post",url);
	xmlHttp.setRequestHeader("Content-Type",
			"application/x-www-form-urlencoded");
	xmlHttp.send(v);
}

</script>