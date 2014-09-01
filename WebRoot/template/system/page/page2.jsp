<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/cms" prefix="cms" %>
<style type="text/css">
.pager {height:24px;line-height:24px;margin-top:8px;}
.pager li {
	font-size: 90%;
	text-align: center;
	margin: 0 2px 0 0;
	display:inline;
}
.pager li a {
	font-family:Courier New,Arial;
    color: #58595b;
    background-color:#f2f2f2;
    padding: 3px 5px;
    text-decoration:none;
    border: 1px solid #999;
    border-top: 1px solid #DDD;
    border-left: 1px solid #DDD; 
}
.pager li a:hover {
	border: 1px solid #DDD;
	border-top: 1px solid #AAA;
	border-left: 1px solid #AAA;
	color:#000;
}
.pager li.current a {
	color: #fff;
	font-weight:bold;
	border:0;
	border-top: 1px solid #58595b;
    background: #58595b;
}
</style>
<ul class="pager">
<li class="<cms:choose><cms:when test="${pageno==1}">page current</cms:when><cms:otherwise>page</cms:otherwise></cms:choose>">
<a href="${path}1.html">1</a></li>
<cms:if test="${totalpage>1}">
<li class="<cms:choose><cms:when test="${pageno==2}">page current</cms:when><cms:otherwise>page</cms:otherwise></cms:choose>">
<a href="${path}2.html">2</a></li></cms:if>
<cms:if test="${pageno>5}">
<li class="page"><a href="#">......</a></li></cms:if>
<cms:if test="${totalpage>2}">
<li class="<cms:choose><cms:when test="${pageno==3}">page current</cms:when><cms:otherwise>page</cms:otherwise></cms:choose>">
<a href="${path}<cms:choose><cms:when test="${pageno>5}">${pageno-2}.html">${pageno-2}</cms:when><cms:otherwise>3.html">3</cms:otherwise></cms:choose></a></li></cms:if>
<cms:if test="${totalpage>3}">
<li class="<cms:choose><cms:when test="${pageno==4}">page current</cms:when><cms:otherwise>page</cms:otherwise></cms:choose>">
<a href="${path}<cms:choose><cms:when test="${pageno>5}">${pageno-1}.html">${pageno-1}</cms:when><cms:otherwise>4.html">4</cms:otherwise></cms:choose></a></li></cms:if>
<cms:if test="${totalpage>4}">
<li class="<cms:choose><cms:when test="${pageno>4}">page current</cms:when><cms:otherwise>page</cms:otherwise></cms:choose>">
<a href="${path}<cms:choose><cms:when test="${pageno>5}">${pageno}.html">${pageno}</cms:when><cms:otherwise>5.html">5</cms:otherwise></cms:choose></a></li></cms:if>
<cms:if test="${totalpage>5 && pageno<totalpage}">
<li class="<cms:choose><cms:when test="${pageno==6 && totalpage<10}">page current</cms:when><cms:otherwise>page</cms:otherwise></cms:choose>">
<a href="${path}<cms:choose><cms:when test="${pageno>5}">${pageno+1}.html">${pageno+1}</cms:when><cms:otherwise>6.html">6</cms:otherwise></cms:choose></a></li></cms:if>
<cms:if test="${totalpage>6 && pageno<totalpage-1}">
<li class="<cms:choose><cms:when test="${pageno==7 && totalpage<10}">page current</cms:when><cms:otherwise>page</cms:otherwise></cms:choose>">
<a href="${path}<cms:choose><cms:when test="${pageno>5}">${pageno+2}.html">${pageno+2}</cms:when><cms:otherwise>7.html">7</cms:otherwise></cms:choose></a></li></cms:if>
<cms:if test="${totalpage>9 && pageno<totalpage-5}">
<li class="page"><a href="#">......</a></li></cms:if>
<cms:if test="${totalpage>9 && pageno<totalpage-3}">
<li class="page"><a href="${path}${totalpage-1}.html">${totalpage-1}</a></li></cms:if>
<cms:if test="${totalpage>9 && pageno<totalpage-2}">
<li class="page"><a href="${path}${totalpage}.html">${totalpage}</a></li></cms:if>
<li style="font-family:Courier New,Arial;">转到第<input type="text" id="to_page_no" size="1"></input>页
 <input type="button" onclick="submitGo();" value="go" /></li>
</ul>
<script language="javascript">
function submitGo(){
   var pageNo=document.getElementById("to_page_no").value;
   if(pageNo.match(/\D/)==null){
   }else{
      alert("请输入数字。");
      document.getElementById("to_page_no").select();
      return;
   }	  
   if (${pageno}==pageNo){
   }else if(pageNo<1){
       alert("选择的页数必须大于0。");
       document.getElementById("to_page_no").select();
   }else if(pageNo>${totalpage}){
       alert("选择的页数不能大于总页数。");
       document.getElementById("to_page_no").select();
   }else{
       location='${path}'+pageNo+'.html';
   }
}
</script>