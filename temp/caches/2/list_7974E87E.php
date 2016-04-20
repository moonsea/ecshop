<?php exit;?>a:3:{s:8:"template";a:5:{i:0;s:65:"D:/wamp/PHPnow/htdocs/ec/ecshop/themes/ecmoban_meilishuo/list.dwt";i:1;s:80:"D:/wamp/PHPnow/htdocs/ec/ecshop/themes/ecmoban_meilishuo/library/page_header.lbi";i:2;s:79:"D:/wamp/PHPnow/htdocs/ec/ecshop/themes/ecmoban_meilishuo/library/goods_list.lbi";i:3;s:74:"D:/wamp/PHPnow/htdocs/ec/ecshop/themes/ecmoban_meilishuo/library/pages.lbi";i:4;s:80:"D:/wamp/PHPnow/htdocs/ec/ecshop/themes/ecmoban_meilishuo/library/page_footer.lbi";}s:7:"expires";i:1461054093;s:8:"maketime";i:1461050493;}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>ECSHOP模板堂（www.ecmoban.com）专业ECSHOP模板制作 ECSHOP模板定制_ECSHOP模板修改_ECSHOP模板出售_ECSHOP模板案例</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/fonts.css" rel="stylesheet">
<link href="css/animation.css" rel="stylesheet">
<link href="css/photo-list.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.min.js"></script><script type="text/javascript" src="js/bootstrap.min.js"></script></head>
<body>
<script type="text/javascript">
var process_request = "正在处理您的请求...";
</script>
<script type="text/javascript">
//设为首页 www.ecmoban.com
function SetHome(obj,url){
    try{
        obj.style.behavior='url(#default#homepage)';
       obj.setHomePage(url);
   }catch(e){
       if(window.netscape){
          try{
              netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
         }catch(e){
              alert("抱歉，此操作被浏览器拒绝！\n\n请在浏览器地址栏输入“about:config”并回车然后将[signed.applets.codebase_principal_support]设置为'true'");
          }
       }else{
        alert("抱歉，您所使用的浏览器无法完成此操作。\n\n您需要手动将【"+url+"】设置为首页。");
       }
  }
}
 
//收藏本站 bbs.ecmoban.com
function AddFavorite(title, url) {
  try {
      window.external.addFavorite(url, title);
  }
catch (e) {
     try {
       window.sidebar.addPanel(title, url, "");
    }
     catch (e) {
         alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
     }
  }
}
//初始化主菜单
function sw_nav(obj,tag)
{
	var DisSub = document.getElementById("DisSub_"+obj);
	var HandleLI= document.getElementById("HandleLI_"+obj);
	if(tag==1)
	{
		DisSub.style.display = "block";
 
		
	}
	else
	{
		DisSub.style.display = "none";
	
	}
}
</script>
	<nav class="navbar navbar-inverse" role="navigation" style="border:none; border-radius:0;margin-bottom:0;">
           <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" 
                 data-target="#nav">
                 <span class="sr-only">切换导航</span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
              </button>
              <a href="#" class="navbar-brand" style="padding-top:3px; padding-right:50px;"><img src="img/logo-nav.png" width="41" height="45"/></a>
           </div>
           <div class="collapse navbar-collapse" id="nav">
              <ul class="nav navbar-nav">
                 <li class="active f14"><a href="user.php">我的相册</a></li>
                 <li class="f14"><a href="#">DIY</a></li>
              </ul>
              <ul class="navbar-right mt-5">
                	<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="img/user.jpg" width="40" height="40" class="img-circle table-bordered"/>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                            	<a href="#">
                                	<i class="glyphicon glyphicon-bell text-danger">&nbsp;</i>
                                    <font class="text-danger">未完成(2)</font>
                            	</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                            	<a href="#">
                                	<i class="glyphicon glyphicon-shopping-cart">&nbsp;</i>
                                    <font>购物筐</font>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                            	<a href="#">
                                	<i class="glyphicon glyphicon-log-out text-danger">&nbsp;</i>
                                    <font class="text-danger">退出</font>
                                </a>
                            </li>
                        </ul>
                 	</li>
               </ul>
           </div>
    </nav>
 
 
 
    <ul class="list-group" id="list-group">
            <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="goods.php?id=143">《再测试一个》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2">国庆大促，下单再减10%</p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="goods.php?id=143"><div class="list-img" style="background-image:url(images/no_picture.gif)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
            <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="goods.php?id=142">《测试》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2">国庆大促，下单再减10%</p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="goods.php?id=142"><div class="list-img" style="background-image:url(images/no_picture.gif)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
            <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="goods.php?id=141">《大衣》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2">国庆大促，下单再减10%</p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="goods.php?id=141"><div class="list-img" style="background-image:url(images/201410/goods_img/141_G_1413926445159.jpg)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
            <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="goods.php?id=140">《毛貂毛边卫衣套装》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2">国庆大促，下单再减10%</p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="goods.php?id=140"><div class="list-img" style="background-image:url(images/201410/goods_img/140_G_1413928959785.jpg)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
            <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="goods.php?id=139">《秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2">国庆大促，下单再减10%</p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="goods.php?id=139"><div class="list-img" style="background-image:url(images/201410/goods_img/139_G_1413929154772.jpg)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
            <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="goods.php?id=138">《现货发售 马海毛保暖毛衣》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2">国庆大促，下单再减10%</p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="goods.php?id=138"><div class="list-img" style="background-image:url(images/201410/goods_img/138_G_1413929827627.jpg)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
            <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="goods.php?id=137">《蜜糖家 METIME 秋季新品 自制薄毛呢西装长马甲》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2">国庆大促，下单再减10%</p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="goods.php?id=137"><div class="list-img" style="background-image:url(images/201410/goods_img/137_G_1413930199852.jpg)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
            <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="goods.php?id=136">《米兰时装周同款 法式优雅女人味性感尖头及踝靴 细跟高跟短靴裸靴》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2">国庆大促，下单再减10%</p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="goods.php?id=136"><div class="list-img" style="background-image:url(images/201410/goods_img/136_G_1413930502218.jpg)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
        </ul>
    
<form name="selectPageForm" action="/ec/ecshop/list.php" method="get">
	<ul class="pager">
                      <li class="active"><a href="javascript:;">1</a></li>
                      <li><a href="category.php?id=21&amp;page=2">2</a></li>
            
  <li><a href="category.php?id=21&amp;page=2">下一页</a></li>        </ul>
</form>
<script type="Text/Javascript" language="JavaScript">
<!--
function selectPage(sel)
{
  sel.form.submit();
}
//-->
</script>
    <div class="row b-f2f2f2">
    	<div class="container mt-40 mb-40">
            <div class="pull-left">
                <img src="img/logo-footer.png" width="305" height="82"/><br><br>
                <div class="font2 f16">
                    哈尔滨时光慢递有限责任公司&nbsp;黑ICP备15006535
                </div>
            </div>
            <div class="pull-right">
                <img src="img/timepost.png" width="162" height="35"/><br><br>
                <p class="font2 f16">电话：0451-123456</p>
                <p class="font2 f16">地址：哈尔滨市香坊区</p>
            </div>
        </div>
    </div>
 
</body>
</html>
