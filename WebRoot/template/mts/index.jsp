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
<link href="<cms:webroot/>/css/cpzs_css.css" rel="stylesheet" type="text/css" media="screen" charset="utf-8">
<script type="text/javascript" src="<cms:webroot/>/js/jquery-1.8.0.js"></script>
<script src="<cms:webroot/>/js/slider.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
    var t = n = 0, count;
    $(document).ready(function(){    
        count=$("#banner_list a").length;
        $("#banner_list a:not(:first-child)").hide();
        $("#banner_info").html($("#banner_list a:first-child").find("img").attr('alt'));
        $("#banner_info").click(function(){window.open($("#banner_list a:first-child").attr('href'), "_blank")});
        $("#banner li").click(function() {
            var i = $(this).text() - 1;//获取Li元素内的值，即1，2，3，4
            n = i;
            if (i >= count) return;
            $("#banner_info").html($("#banner_list a").eq(i).find("img").attr('alt'));
            $("#banner_info").unbind().click(function(){window.open($("#banner_list a").eq(i).attr('href'), "_blank")})
            $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
            document.getElementById("banner").style.background="";
            $(this).toggleClass("on");
            $(this).siblings().removeAttr("class");
        });
        t = setInterval("showAuto()", 4000);
        $("#banner").hover(function(){clearInterval(t)}, function(){t = setInterval("showAuto()", 4000);});
    })
    
    function showAuto()
    {
        n = n >=(count - 1) ? 0 : ++n;
        $("#banner li").eq(n).trigger('click');
    }
</script>

<style type="text/css">

#banner {position:relative; width:905px; height:185px; overflow:hidden;}
#banner_list img {border:0px;}
#banner_info{position:absolute; bottom:0; left:5px;height:22px;color:#fff;z-index:1001;cursor:pointer}
#banner_text {position:absolute;width:120px;z-index:1002; right:3px; bottom:3px;}
#banner ul {position:absolute;list-style-type:none;filter: Alpha(Opacity=80);opacity:0.8; border:1px solid #fff;z-index:1002;
			margin:0; padding:0; bottom:3px; right:5px;}
#banner ul li { padding:0px 8px;float:left;display:block;color:#FFF;border:#e5eaff 1px solid;background:#6f4f67;cursor:pointer}
#banner ul li.on { background:#900}

</style>
</head>

<body>
<div id="main_warp">
<div id="main">

	<!-- 页头Start -->
   	<div id="jh_head">
		<%@ include file="head.jsp"%>
    </div>
    <!-- 页头End -->
    
    
    <!-- 头部展示Start -->
    <div id="jh_toutu" align="center"><br />
    	<div id="banner">	
			<div id="banner_info"></div> 
			<ul>
			    <li class="on">1</li>
			    <li>2</li>
			    <li>3</li>
			    <li>4</li>
			</ul>
			<div id="banner_list">
			    <a href="#" target="_blank"><img src="<cms:webroot/>/images/toutu/jhmts_04.jpg" title="聚合蒙脱石" alt="厂房展示" /></a>
			    <a href="#" target="_blank"><img src="<cms:webroot/>/images/toutu/jhmts_04.jpg" title="聚合蒙脱石" alt="聚合蒙脱石" /></a>
			    <a href="#" target="_blank"><img src="<cms:webroot/>/images/toutu/jhmts_04.jpg" title="聚合蒙脱石" alt="联系我们" /></a>
			    <a href="#" target="_blank"><img src="<cms:webroot/>/images/toutu/jhmts_04.jpg" title="聚合蒙脱石" alt="合力共赢" /></a>
			</div>
    	</div>
    </div>
    <!-- 头部展示End -->
    
    
    <div id="jh_context">
    	<!-- 最新动态 Start -->
    	<div id="jh_zxdt">
        	<a href="<cms:webroot/>/zxdt/pages/1.html" target="_blank"><font class="column_name">最新动态 >>> </font></a>
            <br />
            <cms:arlist pagesize="3" columnid="2">
				<div>
					<a class="article_title" href="${article.url}">${article.title}</a><br />
	            	<a class="article_img">
	            		<img name="" src="<cms:webroot/>/upload/admin/image${article.picture}" width="67" height="70" alt="" />
	            	</a>
	            	<div>
	                	<a class="article_content">${article.note}
	                	</a>
	                	<a href="${article.url}">>>></a>
	            	</div>	
            	</div>
            	<br/>
				<br/>
				<br/>
			</cms:arlist>
		</div>	
		<!-- 最新动态End -->
		
		<!-- 公司简介Start -->
		<div id="jh_gsjj">
        	<font class="column_name">公司简介</font>
            <br />
            <cms:arlist pagesize="1" columnid="20">
            	<a class="article_content">${article.note}</a>
            	<a href="${article.url}">>>></a>
        	</cms:arlist>
        </div>
		<!-- 公司简介End -->
		
		
		<!-- 产品展示Start -->
		<div  id="jh_cpzs">
       	  <font class="column_name">产品展示</font>
          <br />
	      	<div id="wrapper">
		        <div id="slider">   
		            <img class="scrollButtons left" src="images/leftarrow.png">
					<div style="overflow: hidden;" class="scroll">
						<div class="scrollContainer">
						<% int i=0 ;%>
							<cms:arlist pagesize="5" columnid="16">
							<%	
								i=i+1;
								String panelid = "panel_"+i;
							%>
							 	<div class="panel" id=<%=panelid %>>
									<div class="inside">
										<img src="<cms:webroot/>/upload/admin/image${article.picture}" alt="picture" />
										<h2 align="center">${article.title}</h2>
										<p></p>
									</div>
								</div>		 
							</cms:arlist>
							
		                </div>
		
						<div id="left-shadow"></div>
						<div id="right-shadow"></div>
		            </div>
					<img class="scrollButtons right" src="<cms:webroot/>/images/rightarrow.png">
					<img class="scrollButtons left" src="<cms:webroot/>/images/leftarrow.png">
		        </div>   
		    </div>
	    </div>  
	    <!-- 产品展示End -->	
    </div>  
	
		
	<div id="jh_info">
		<!-- 蒙脱石介绍Start -->
   		<div  id="jh_mtsjs">
       	  <font class="column_name">蒙脱石介绍</font>
            <br />
            <a id="jh_mtsjs_img">
            <img src="<cms:webroot/>/images/mtsjs/jhmts_37.jpg" width="170" height="170" /> 
            </a>
            <cms:arlist pagesize="6" columnid="17">
           		<a class="article_title" href="#">${article.title}</a><br />
            </cms:arlist>
            <br />
        </div>
        <!-- 蒙脱石介绍End -->
        
        
        <!-- 技术资料Start -->
    	<div  id="jh_jszl">
        	<font class="column_name">技术资料</font>
            <br />

            <cms:arlist pagesize="6" columnid="18">          	          
	            	<a class="article_title"  href="${article.url }">
	            		${article.title}...
	            	</a>            	           
	            	<cms:formatdate format="yy-MM-dd" datetime="${article.creatime}"/>
	            <br />
            </cms:arlist>
        </div>
        <!-- 技术资料End -->
        
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