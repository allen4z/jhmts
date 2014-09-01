<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/cms" prefix="cms" %>
					<div id="my_menu" class="sdmenu">
						<div><span>栏目列表</span>
							<a href="<cms:webroot/>/plugin/pages/1.html" 
							<cms:if test="${columnid==3}">class="current"</cms:if>>插件使用</a>
							<a href="<cms:webroot/>/tags/pages/1.html" 
							<cms:if test="${columnid==4}">class="current"</cms:if>>标签使用</a>
							<a href="<cms:webroot/>/template/pages/1.html" 
							<cms:if test="${columnid==5}">class="current"</cms:if>>模板设计</a>
							<a href="<cms:webroot/>/xdth/pages/1.html" 
							<cms:if test="${columnid==6}">class="current"</cms:if>>心得体会</a>
							<a href="<cms:webroot/>/azsy/pages/1.html" 
							<cms:if test="${columnid==7}">class="current"</cms:if>>安装使用</a>
							<a href="<cms:webroot/>/zxdt/pages/1.html" 
							<cms:if test="${columnid==2}">class="current"</cms:if>>最新动态</a>
							<a href="<cms:webroot/>/faq/pages/1.html" 
							<cms:if test="${columnid==8}">class="current"</cms:if>>常见问题</a>
						</div>
						<div><span>知识库</span>
							<a href="<cms:webroot/>/repository/jzjq/pages/1.html" 
							<cms:if test="${columnid==11}">class="current"</cms:if>>建站技巧</a>
							<a href="<cms:webroot/>/repository/wyjc/pages/1.html" 
							<cms:if test="${columnid==12}">class="current"</cms:if>>网页基础</a>
							<a href="<cms:webroot/>/repository/wlbc/pages/1.html" 
							<cms:if test="${columnid==13}">class="current"</cms:if>>网络编程</a>
							<a href="<cms:webroot/>/repository/dbserver/pages/1.html" 
							<cms:if test="${columnid==14}">class="current"</cms:if>>数据库和服务器</a>
						</div>
					</div>
					<script language="JavaScript">
						var myMenu=new SDMenu("my_menu");
						myMenu.init();
					    myMenu.expandMenu(myMenu.submenus[<cms:choose>
						<cms:when test="${columnid<10}">0</cms:when>
						<cms:otherwise>1</cms:otherwise>
						</cms:choose>]);
					</script>