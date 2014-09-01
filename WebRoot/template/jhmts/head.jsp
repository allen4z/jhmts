<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/cms" prefix="cms" %>


<script type="text/javascript">
$(document).ready(function(){

	$("#floatShow").bind("click",function(){
	
		$("#onlineService").animate({width:"show", opacity:"show"}, "normal" ,function(){
			$("#onlineService").show();
		});
		
		$("#floatShow").attr("style","display:none");
		$("#floatHide").attr("style","display:block");
		
		return false;
	});
	
	
	$("#floatHide").bind("click",function(){
	
		$("#onlineService").animate({width:"hide", opacity:"hide"}, "normal" ,function(){
			$("#onlineService").hide();
		});
		
		$("#floatShow").attr("style","display:block");
		$("#floatHide").attr("style","display:none");
		
		return false;
	});
	
	
});
</script>


<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}

/* online */
#online_qq_tab a,.onlineMenu h3,.onlineMenu li.tli,.newpage{background:url(<cms:webroot/>/images/float_s.gif) no-repeat;}
#onlineService,.onlineMenu,.btmbg{background:url(<cms:webroot/>/images/float_bg.gif) no-repeat;}

#online_qq_layer{z-index:9999;position:fixed;right:0px;top:0;margin:150px 0 0 0;}
*html,*html body{background-image:url(about:blank);background-attachment:fixed;}
*html #online_qq_layer{position:absolute;top:expression(eval(document.documentElement.scrollTop));}

#online_qq_tab{width:28px;float:left;margin:80px 0 0 0;position:relative;z-index:9;}
#online_qq_tab a{display:block;height:118px;line-height:999em;overflow:hidden;}
#online_qq_tab a#floatShow{background-position:-30px -374px;}
#online_qq_tab a#floatHide{background-position:0 -374px;}

#onlineService{display:inline;margin-left:-1px;float:left;width:130px;display:none;background-position:0 0;padding:10px 0 0 0;}
.onlineMenu{background-position:-262px 0;background-repeat:repeat-y;padding:0 15px;}
.onlineMenu h3{height:36px;line-height:999em;overflow:hidden;border-bottom:solid 1px #ACE5F9;}
.onlineMenu h3.tQQ{background-position:0 10px;}
.onlineMenu h3.tele{background-position:0 -47px;}
.onlineMenu li{height:36px;line-height:36px;border-bottom:solid 1px #E6E5E4;text-align:center;}
.onlineMenu li.tli{padding:0 0 0 28px;font-size:12px;text-align:left;}
.onlineMenu li.zixun{background-position:0px -131px;}
.onlineMenu li.fufei{background-position:0px -190px;}
.onlineMenu li.phone{background-position:0px -244px;}
.onlineMenu li a.newpage{display:block;height:36px;line-height:999em;overflow:hidden;background-position:5px -100px;}
.onlineMenu li img{margin:8px 0 0 0;}
.onlineMenu li.last{border:0;}

.wyzx{padding:8px 0 0 5px;height:57px;overflow:hidden;background:url(<cms:webroot/>/images/webZx_bg.jpg) no-repeat;}

.btmbg{height:12px;overflow:hidden;background-position:-131px 0;}
</style>

<div id="online_qq_layer">
	<div id="online_qq_tab">
		<a id="floatShow" style="display:block;" href="javascript:void(0);">收缩</a> 
		<a id="floatHide" style="display:none;" href="javascript:void(0);">展开</a>
	</div>
	<div id="onlineService">
		<div class="onlineMenu">
			<h3 class="tQQ">在线客服</h3>
			<ul>
				<li class="tli zixun">在线咨询</li>
				<li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=591822758&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:591822758:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li>
				<li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=375438916&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:375438916:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li>
				<!-- <li classx`="tli fufei">付费学员</li>
				<li class="last"><a href="#"><img src="<cms:webroot/>/images/pa.gif" width="74" height="22" alt="客服001" /></a></li>
			    -->
			</ul>
		</div>
		<!-- <div class="wyzx">
			<a href="#"><img src="<cms:webroot/>/images/right_float_web.png" width="122" height="50" alt="网页咨询" /></a>
		</div>
		 -->
		<div class="onlineMenu">
			<h3 class="tele">在线客服</h3>
			<ul>
				<!-- <li class="tli phone"> 4000680852</li>
				<li class="tli phone"> 4000680890</li>
				 -->
				 <li> 4000680852</li>
				 <li> 4000680890</li>
			</ul>
		</div>
		<div class="btmbg"></div>
	</div>
</div>


<!--  -->
<div id="LeftDiv" style="position:fixed; width:100px; height:450px; visibility:visible; left: 10px; top: 50%;margin:-300px 0 0 0; border: 0px; background-color: blue">
<iframe width=100%   height=450px   src="<cms:webroot/>/lift_gg.html" frameborder=auto scrolling="no"></iframe>
</div>

<div id="FloatDiv" style="position:fixed; width:100px; height:58px; visibility:visible; right: 10px; bottom: 10px; border: 0px; background-color: blue">
<iframe width=100%   height=58px   src="<cms:webroot/>/liuyan.html" frameborder=auto scrolling="no"></iframe>
</div>



 <div class="top">
    <img src="<cms:webroot/>/images/logo.gif" width="650" height="90" alt="赤峰聚合蒙脱石有限责任公司" />
    <!--<div id="lang"><a href="javascript:if(confirm('只有企业版才有多语言功能，请点击确定访问netgather.com咨询。')){location.href='http://www.netgather.com'}"><img src="images/gb.gif" width="16" height="11" alt="English" />English</a></div>-->
  </div>
  <div id="MainMenu" class="ddsmoothmenu">
    <ul>
      <li><a href="<cms:webroot/>/index.html" title="公司主页" id="menu_selected"><span>公司主页</span></a></li>
      <li><a href="<cms:webroot/>/gsjj/pages/1.html" title="关于我们"><span>关于我们</span></a>
      	<ul class="menulevel">
      	 <li><a href="<cms:webroot/>/gsjj/pages/1.html" title="关于我们">关于我们</a></li>
      	<li><a href="<cms:webroot/>/mtbd/pages/1.html" title="荣誉资质">荣誉资质</a></li>
      	</ul>
      	<!--<ul class="menulevel">
      	<li><a href="<cms:webroot/>/gsjj/pages/1.html" title="联系我们">联系我们</a></li> 
      	</ul>-->
      </li>
      <li><a href="<cms:webroot/>/cpzs/pages/1.html" title="产品展示"><span>产品展示</span></a>
      	<ul class="menulevel">
      	<li><a href="<cms:webroot/>/cpzs/pages/1.html" title="产品介绍">产品介绍</a></li>
      	<li><a href="<cms:webroot/>/kczy/pages/1.html" title="矿产资源">矿产资源</a></li>
      	</ul>
      </li>
      <li><a href="<cms:webroot/>/zxdt/pages/1.html" title="新闻中心"><span>新闻中心</span></a></li>
      <li><a href="<cms:webroot/>/jszl/pages/1.html" title="技术资料"><span>技术资料</span></a></li>
      <li><a href="<cms:webroot/>/zpxx/pages/1.html" title="招聘信息"><span>招聘信息</span></a></li>
      <li><a href="<cms:webroot/>/zszj/pages/1.html" title="知识之家"><span>知识之家</span></a></li>
      <li><a href="http://${header["host"]}${pageContext.request.contextPath}/PluginCtrl?page=ShowMessagePage	" title="留言反馈"><span>留言反馈</span></a></li>
    </ul>
  </div>
<script type="text/javascript">
$(function(){
    $("#banner").KinSlideshow({
            moveStyle:"right",
            titleBar:{titleBar_height:32,titleBar_bgColor:"#000",titleBar_alpha:0.7},
            titleFont:{TitleFont_size:12,TitleFont_color:"#FFFFFF",TitleFont_weight:"normal"},
            btn:{btn_bgColor:"#2d2d2d",btn_bgHoverColor:"#1072aa",btn_fontColor:"#FFF",btn_fontHoverColor:"#FFF",btn_borderColor:"#4a4a4a",btn_borderHoverColor:"#1188c0",btn_borderWidth:1}
    });
})
</script>
  <div id="banner">
    <a href="#"><img src="<cms:webroot/>/images/banner01.jpg" alt="不断优化货源渠道，使产品更具竞争力！" width="950" height="152" /></a>
    <a href="#"><img src="<cms:webroot/>/images/banner02.jpg" alt="不断优化货源渠道，使产品更具竞争力！" width="950" height="152" /></a>
    <a href="#"><img src="<cms:webroot/>/images/banner03.jpg" alt="不断优化货源渠道，使产品更具竞争力！" width="950" height="152" /></a>
  </div>