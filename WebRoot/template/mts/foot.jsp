<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/cms" prefix="cms" %>
<script type="text/javascript" src="<cms:webroot/>/js/jquery-1.8.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.zy_menuitem img').animate({width: 160}, 0);
		$('.zy_menuitem').mouseover(function(){
				gridimage = $(this).find('img');
				gridimage.stop().animate({width: 150}, 150);
			}).mouseout(function(){
				gridimage.stop().animate({width: 160}, 150);
		});
	}); 
</script>

   	 <img style="float:left; margin-top:65px" src="<cms:webroot/>/images/foot/jhmts_40.jpg" width="64" height="181" />
    <div  id="jh_kczy">
    	<font class="column_name"  >矿产资源</font>
	<br />
                <div id="zy_wrapper"> 
                  <div id="zy_menuwrapper">
                  <div id="zy_menu"> 
                  <a href="#" class="zy_menuitem"><img title="mts" src="<cms:webroot/>/images/foot/wang2caitu_44.gif"></a> 
                  <a href="#" class="zy_menuitem"><img src="<cms:webroot/>/images/foot/wang2caitu_46.gif"></a> 
                  <a href="#" class="zy_menuitem"><img src="<cms:webroot/>/images/foot/wang2caitu_48.gif"></a> 
                  <a href="#" class="zy_menuitem"><img src="<cms:webroot/>/images/foot/wang2caitu_50.gif"></a> 
                  <a href="#" class="zy_menuitem"><img src="<cms:webroot/>/images/foot/wang2caitu_52.gif"></a> 
                 
                  </div>
              </div>
            </div> 
    </div>

	<div id="jh_foot">
      <img src="<cms:webroot/>/images/foot/jhmts_43.jpg" width="106" height="112" /><img src="<cms:webroot/>/images/foot/jhmts_44.jpg" width="170" height="112" /><img src="<cms:webroot/>/images/foot/jhmts_45.jpg" width="127" height="112" /><img src="<cms:webroot/>/images/foot/jhmts_46.jpg" width="553" height="112" /><div id="jh_foot_content">
      <div id="foot_left">
      	©2012 www.jhmts.com Copyright <br/>
      	赤峰聚合蒙脱石有限责任公司 版权所有
      </div>
      <div id="foot_right">
      	地址：内蒙古赤峰市宁城县天义镇东京工业园区<br/>
      	联系人：李 先生<br/>
      	E-mail：cfjhlxd@163.com<br/>
      	手机：13947651709    电话：0476-4226795<br/>
      	传真：0476-4243033 邮编：024200
      </div>
      <div>
    </div>

 	