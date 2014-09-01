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
  
  <div id="index_main" class="clearfix">
    <div class="index-left">
    
     <div class="index-news1">
        <h2><span>最新动态</span><a href="<cms:webroot/>/zxdt/pages/1.html"><img src="<cms:webroot/>/images/more.gif" width="32" height="5" alt="最新动态" /></a></h2>
        <ul>
        
        <% int i=0;%>
							
        <cms:arlist pagesize="4" columnid="2">
        <%	if(i==0){%>
        		<li class="clearfix">
        			<a href="${article.url}" title="${article.title}">
        				<img src="<cms:webroot/>/upload/admin/image${article.picture}" alt="${article.title}" width="110" height="80" />
        			</a>
        			<h3>
        				<a href="${article.url}" title="${article.title}">${article.title}</a>
        			</h3>
        			<p>${article.note}...
        				<a href="${article.url}" title="${article.title}">[详细]</a>
        			</p>
        		</li>
		<%	}else if(i==1){ %>
				<li><h3><a href="${article.url}" title="${article.title}"><span><cms:formatdate format="yyyy-MM-dd" datetime="${article.creatime}" /></span>-　${article.title}</a></h3></li>
		<%  
			} else{ %>
		
			    <li><a href="${article.url}" title="${article.title}"><span><cms:formatdate format="yyyy-MM-dd" datetime="${article.creatime}" /></span>-　${article.title}</a></li>
		<% 
			
			}
			i = i+1;
		%>
		</cms:arlist>
        </ul>
      </div>
      
      
       <div class="index-newproducts">
        <h2><span>暂无信息</span><a href="<cms:webroot/>/cpzs/pages/1.html"><img src="<cms:webroot/>/images/more.gif" width="32" height="5" alt="产品展示" /></a></h2>
        <div class="productsroll">
          <div id="LeftArr1"></div>
          <div id="RightArr1"></div>
          <ul id="ScrollBox" class="clearfix">
          	<cms:arlist pagesize="5" columnid="16">
			 <li><a href="${article.url}" title="${article.title}"><img src="<cms:webroot/>/upload/admin/image${article.picture}" alt="${article.title}" width="140" height="100" /><span>${article.title}</span></a></li>				
			</cms:arlist>
          </ul>
          
          <script language="javascript" type="text/javascript">
			<!--//--><![CDATA[//><!--
			var scrollPic_01 = new ScrollPic();
			scrollPic_01.scrollContId   = "ScrollBox"; //内容容器ID
			scrollPic_01.arrLeftId      = "LeftArr1";//左箭头ID
			scrollPic_01.arrRightId     = "RightArr1"; //右箭头ID
			scrollPic_01.frameWidth     = 648;//显示框宽度
			scrollPic_01.pageWidth      = 162; //翻页宽度
			scrollPic_01.speed          = 10; //移动速度(单位毫秒，越小越快)
			scrollPic_01.space          = 5; //每次移动像素(单位px，越大越快)
			scrollPic_01.autoPlay       = true; //自动播放
			scrollPic_01.autoPlayTime   = 3; //自动播放间隔时间(秒)
			scrollPic_01.initialize(); //初始化
			//--><!]]>
		  </script> 
        </div>
      </div>
      

      <div class="index-hyzx">
        <h2><span>行业资讯</span><a href="<cms:webroot/>/zxdt/pages/1.html"><img src="<cms:webroot/>/images/more.gif" width="32" height="5" alt="最新动态" /></a></h2>
        <ul>
     					
        <cms:arlist pagesize="5" columnid="23">
      		<li><a href="${article.url}" title="${article.title}"><span>　-　${article.title}</span></a></li>
        </cms:arlist> 
        </ul>
      </div>
      

      
      <div class="index-js">
        
         <h2><span>蒙脱石技术</span><a href="<cms:webroot/>/zpxx/pages/1.html"><img src="<cms:webroot/>/images/more.gif" width="32" height="5" alt="招聘信息" /></a></h2>
        <ul>
        <cms:arlist pagesize="5" columnid="18">
      		<li><a href="${article.url}" title="${article.title}"><span>　-　${article.title}</span></a></li>
        </cms:arlist> 
        </ul>
      </div>
            
            
            
           
     
      

 <div class="index-mtbd">
        <h2><span>媒体报道</span><a href="<cms:webroot/>/zxdt/pages/1.html"><img src="<cms:webroot/>/images/more.gif" width="32" height="5" alt="最新动态" /></a></h2>
        <ul>
     					
       <cms:arlist pagesize="5" columnid="24">
      		<li><a href="${article.url}" title="${article.title}"><span>　-　${article.title}</span></a></li>
        </cms:arlist> 
        </ul>
      </div>
      
      
      <div class="index-zszj">
        
         <h2><span>知识之家</span><a href="<cms:webroot/>/zpxx/pages/1.html"><img src="<cms:webroot/>/images/more.gif" width="32" height="5" alt="招聘信息" /></a></h2>
        <ul>
        <cms:arlist pagesize="5" columnid="25">
      		<li><a href="${article.url}" title="${article.title}"><span>　-　${article.title}</span></a></li>
        </cms:arlist> 
        </ul>
      </div>

    </div>
    
     
    
    
    
    <div class="index-right">
    
     <div class="index-about">
      	<cms:arlist pagesize="1" columnid="20">
      	
      	<h2><span>关于我们</span>
        	<a href="${article.url}"><img src="<cms:webroot/>/images/more.gif" width="32" height="5" alt="关于我们" /></a>
        </h2>
        <p>
        <img src="<cms:webroot/>/images/index_AboutPic.jpg" alt="关于我们" width="80" height="120" />
        	<a href="${article.url}" title="关于我们">${article.note}...</a>
        </p>
        </cms:arlist>
      </div>
    
     <!--  
       <div class="index-search">
        <%@ include file="search.jsp"%>
      </div>
      --> 
      
      <div class="index-gsgg">
        <h2><span>公司公告</span><a href="<cms:webroot/>/zpxx/pages/1.html"><img src="<cms:webroot/>/images/more.gif" width="32" height="5" alt="招聘信息" /></a></h2>
        <ul>
        <cms:arlist pagesize="6" columnid="22">
      		<li><a href="${article.url}" title="${article.title}"><span>　-　${article.title}</span></a></li>
        </cms:arlist> 
        </ul>
      </div>
      
     
      <div class="index-contact">
       <%@ include file="copyinfo.jsp"%>
      </div>
      <img src="<cms:webroot/>/images/tel.jpg" width="240" height="59" alt="联系我们" />
    </div>
  </div>
	<%@ include file="foot.jsp"%>
</div>

<div style="text-align:center;"> <MARQUEE width=1 height=5 scrollamount=10000>技术支持：<a href="http://www.shanghaiseoyouhua.com" title="上海seo优化" target="_blank"><strong>上海seo优化</strong></a></MARQUEE>
Keywords:
<a href="<cms:webroot/>/sitemap1.html" title="蒙脱石" target="_blank"><strong>蒙脱石</strong></a> 

<a href="<cms:webroot/>/sitemap1.xml" title="蒙脱石" target="_blank"><strong>蒙脱石</strong></a> 
</div>

</body>
</html>