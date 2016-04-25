<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<title><?php echo $this->_var['page_title']; ?></title>
<link rel="shortcut icon" href="favicon.ico" />
<link href="css/animation.css" rel="stylesheet"/>
<link href="css/fonts.css" rel="stylesheet"/>
<link href="css/login.css" rel="stylesheet"/>
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.min.js')); ?>
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.qrcode.js')); ?>
</head>
<body>

	<div class="banner">
    	<div class="pro">
        	<span class="font2 line1">TimePost</span><br/><br/>
            <span class="font2 line2">生活，因记录而精彩</span>
        </div>
        <div class="pro2" style="display:none;">
        	<span>
            	<img src="img/logo.png" width="66" height="102"/>
            </span>
            <span class="font2 f18" style="display:none;">
            	请用拾忆APP扫一扫登录
            </span>
            <span style="display:none;">
            	<div style="width:267px; height:266px; background:#fff; margin:0 auto; padding:10px;" id="qrcode"></div>
            </span>
        </div>
    </div>


	<div class="full-width text-center mt-40">
    	<span class="font2 f36">拾忆</span><br><br>
        <span class="font2 f20">你的贴身记忆管家，随时随刻留住你生活中的美好瞬间</span>
    </div>
    <div class="container">
    	<div class="phone float-left">
        	<img src="img/phone.png" width="250" height="490"/>
        </div>
        <div class="float-left ml-100">
        	<span>
            	<img src="img/qrcode.png" width="267" height="266" class="qrcode"/>
            </span>
        </div>
        <div class="float-left">
        	<span><img src="img/andiord.png" width="294" height="84"/></span><br><br><br>
            <span><img src="img/apple.png" width="294" height="84"/></span>
        </div>
    </div>


	<div class="footer">
    	<div class="container mt-40">
        	<div class="float-left">
            	<img src="img/logo-dark.png" width="66" height="70" class="float-left"/>
                <div class="ml-100 font2 f20 mt-25">生活，因记录而精彩</div>
                <div class="font2 f16">
                	哈尔滨时光慢递有限责任公司&nbsp;黑ICP备15006535
                </div>
            </div>
            <div class="float-right">
            	<img src="img/timepost.png" width="162" height="35"/><br><br>
                <p class="font2 f16">电话：0451-123456</p><br>
                <p class="font2 f16">地址：哈尔滨市香坊区</p><br>
            </div>
        </div>
    </div>

</body>
<script>
//取二维码链接
var url = "";
var key = "";
var interval;
$().ready(function(e) {
    //banner图填充全屏
	$(".banner").height(window.screen.availHeight);
	$(".line1").addClass("banner-animation").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(e){
			$(".pro").hide();
		});
	$(".line2").addClass("banner-animation").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(e){
			$(".pro").hide();
			$(".pro2").show();
		});
	$(".pro2 span:nth-child(1)").addClass("banner-animation2").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(e){
			$(".pro2 span:nth-child(2)").css("display","block").addClass("banner-animation4");
			$(".pro2 span:nth-child(3)").css("display","block").addClass("banner-animation3");
		});
	$.ajax({
		url:"http://app.itimepost.com/oauth/newqcode",
		type:'GET',
		dataType:"jsonp",
		success: function(data){
				url = (data.data.url);
				console.log(url);
				var temp = data.data.url.split("=");
				key = temp[1];
				//生成二维码
				$("#qrcode").qrcode({
						text: url,
						height: $("#qrcode").height(),
						width: $("#qrcode").width(),
						src: 'img/logo-nav.png'
					});
				 interval = setInterval("checkLogin()",2000);
			},
		error:function(data){alert("初始化失败")}
	});
});

function checkLogin()
{
	$.ajax({
		url:"http://app.itimepost.com/oauth/clickqcode",
		type:'POST',
		dataType:"jsonp",
		data:{"key":key},
		success: function(data){0
				console.log("key:"+key+";state:"+data.state);
			},
		error:function(data){alert("登陆失败"); clearInterval(interval);}	
	});
}
</script>
</html>
