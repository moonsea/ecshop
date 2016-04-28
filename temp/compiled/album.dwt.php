<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<title><?php echo $this->_var['page_title']; ?></title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/fonts.css" rel="stylesheet">
<link href="css/animation.css" rel="stylesheet">
<link href="css/photo-list.css" rel="stylesheet">
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.min.js,bootstrap.min.js,plupload.full.min.js,qiniu.js')); ?>
<style>
.img{position:relative;}
.img .hover{display:none; position:absolute; left:0; top:0; bottom:0; right:0; background:rgba(0,0,0,0.3); text-align:center; color:#fff; padding-top:50%; font-size:16px;}
.img:hover{cursor:pointer;}
.img:hover .hover{display:block;}

/*gallery*/
.gallery_back{position:absolute; left:0; right:0; top:0; bottom:0; background:rgba(0,0,0,0.7); z-index:100; display:none;}
.gallery{overflow:auto; margin:0 auto;}
.gallery img{max-height:100%; margin:0 auto; display:block;}
.gallery_close{position:absolute; top:10px; right:10px; cursor:pointer;}

/*uploadimg*/
.upload_back{position:absolute; left:0; right:0; top:0; bottom:0; background:rgba(0,0,0,0.7); z-index:100; display:none;}
.upload{width:240px; height:360px; background:#fff; border-radius:1em; -webkit-border-radius:1em; margin:0 auto; margin-top:140px;}
.upload_close{float:right; margin-top:5px; margin-right:5px; cursor:pointer;}
.upload_head{clear:both; height:40px; line-height:40px; margin:0 auto; margin-top:-10px; text-align:center; width:100%;}
.upload_liner{width:100%; border-bottom:2px solid #ccc;}
.upload_main{width:240px; height:130px; text-align:center;}
.upload_main img{width:100px; height:100px; display:block; margin:0 auto; margin-top:30px; cursor:pointer;}
.upload_go{width:100%; height:auto; margin-top:10px; text-align:center;}
.upload_text{width:100%; height:60px;}
.upload_text textarea{width:100%; height:60px; line-height:20px; font-size:12px; color:#333; background-color:#CCC; resize:none;}
</style>

</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>


<div class="cover-img" style="background-image:url(<?php echo $this->_var['prev']; ?>/<?php echo $this->_var['cover']; ?>); margin-top:20px; margin-bottom:20px;"></div>

<center>
	<h1>《<?php echo $this->_var['name']; ?>》</h1>
    <p class="f16">作者：<?php echo $this->_var['username']; ?></p>
    <p style="max-width:400px;" class="line-height-24 f14">
    	<?php echo $this->_var['desc']; ?>
    </p>
    <p class="mt-40 mb-40">
        <span><a href="javascript:;" class="mylabel-666 f14" onclick="uploadImg()">上传照片</a></span>
        <span><a href="do.php?step=1&album=<?php echo $this->_var['album_id']; ?>" class="mylabel-900 f14">制作纪念册</a></span>
    </p>
</center>
<div class="liner"></div>



	<div class="container mb-40">
    	<ul class="list-group">
            <?php $_from = $this->_var['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');$this->_foreach['list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['list']['total'] > 0):
    foreach ($_from AS $this->_var['item']):
        $this->_foreach['list']['iteration']++;
?>
        	<li class="list-unstyled mt-20 mb-20 text-center height-auto">
            	<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                	<img src="<?php echo $this->_var['userimg']; ?>" class="img-responsive myborder img-circle"/>
                    <span class="f36 font2 day">18</span><br>
                    <span class="f30 font2 month">3月</span>
                    <input type="hidden" name="time" value="<?php echo $this->_var['item']['time']; ?>"/>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 height-auto" style="border-bottom:2px solid #ccc; padding-bottom:30px;" id="list">
                <?php $_from = $this->_var['item']['image']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'pic');$this->_foreach['pic'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['pic']['total'] > 0):
    foreach ($_from AS $this->_var['pic']):
        $this->_foreach['pic']['iteration']++;
?>
                	<?php if ($this->_foreach['pic']['iteration'] < 5): ?>
                	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 mb-5 img" style="background:url(<?php echo $this->_var['prev']; ?>/<?php echo $this->_var['pic']['original']; ?>) center center no-repeat; background-size:cover; border:5px solid #fff;">
                    	<div class="hover"></div>
                    </div>
                    <?php else: ?>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 mb-5 img hide" style="background:url(<?php echo $this->_var['prev']; ?>/<?php echo $this->_var['pic']['original']; ?>) center center no-repeat; background-size:cover; border:5px solid #fff;">
                    	<div class="hover"></div>
                    </div>
                    <?php endif; ?>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 f16 f-gray" style="text-align:left">
                    <?php echo $this->_var['username']; ?>：<font class="desc"><?php echo $this->_var['item']['desc']; ?></font>
                </div>
                </div>
            </li>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>

<script>
	$().ready(function(e) {
        $(".desc").each(function(index, element) {
           $(this).html(decodeURI($(this).html())); 
        });
    });
</script>

<div class="gallery_back">
	<div class="gallery_close" onclick="close_gallery()"><img src="img/close.png" width="24" height="24"/></div>
	<div class="gallery">
    		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" onclick="gallery_pre()">
    			<img src="img/left.png" style="cursor:pointer;"/>
            </div>
            <?php $_from = $this->_var['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');$this->_foreach['list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['list']['total'] > 0):
    foreach ($_from AS $this->_var['item']):
        $this->_foreach['list']['iteration']++;
?>
            	<?php $_from = $this->_var['item']['image']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'pic');$this->_foreach['pic'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['pic']['total'] > 0):
    foreach ($_from AS $this->_var['pic']):
        $this->_foreach['pic']['iteration']++;
?>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 img-list">
                        <img src="<?php echo $this->_var['prev']; ?>/<?php echo $this->_var['pic']['original']; ?>" class="img-responsive"/>
                    </div>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" onclick="gallery_next()">
        		<img src="img/right.png" style="cursor:pointer;"/>
            </div>
    </div>
</div>


<div class="upload_back">
	<div class="upload">
    	<div class="upload_close" onclick="close_upload()"><img src="img/close.png" width="20" height="20"/></div>
        <div class="upload_head"><img src="<?php echo $this->_var['userimg']; ?>" class="img-responsive img-circle" width="40" height="40" style="margin:0 auto; margin-top:-10px; display:inline;"/></div>
        <div class="upload_liner"></div>
        <div class="upload_main"><img src="img/upload_main.png" onclick="choose_img()" id="upload_button" /></div>
        <div class="upload_liner"></div>
        <div class="upload_text"><textarea placeholder="说点儿什么吧" id="desc"></textarea></div>
        <div class="upload_liner"></div>
        <div class="upload_go">
        	<span><a href="javascript:;" class="mylabel-900 f14" onclick="upload_go()" style="padding-left:1em; padding-right:1em; background-color:#F33; color:#fff; border:0; display:block; width:140px; margin:0 auto; margin-top:20px;">发布</a></span>
            <input type="file" id="file" class="hidden" multiple="multiple"/>
        </div>
        <div class="hidden data"></div>
    </div>
</div>



<?php echo $this->fetch('library/page_footer.lbi'); ?>     
     
     
</body>

<script type="text/javascript">
	var uptoken = "";
	var publish_id = "";
	var upload_ok = Array();
	var key = Array();
	var current = 1;
	$().ready(function(e) {
		
		num=0;
		total=0;
        $(".img").each(function(index, element) {
            $(this).height($(this).width());
			num++;
			total++;
        });
		
		$(".list-group li").each(function(index, element) {
         	num_temp = 0;
			$(this).find(".img").each(function(index, element) {
                num_temp++;
            });
			var temp = "<div class='hover'><img src='img/right.png' width='21' height='38'/>&nbsp;&nbsp;";
			if(num_temp>4)
			{
				temp += num_temp-4;
			}
			temp += "</div>";
			if(num_temp>4)
			{
				num_temp = 4;
				$(this).find(".img:nth-child("+num_temp+")").html(temp); 
			}	   
        });
		
		//.img click event
		$("#list .img").each(function(index, element) {
            $(this).click(function(e) {
                gallery(index);
            });
        });
		//init gallery
		$(".img-list").each(function(index, element) {
            if(index != current)
			{
				$(this).hide();
			}
        });
		//init img height
		$(".gallery img").css("max-height",$(window).height()-20);
		//init time
		$("input[name='time']").each(function(index, element) {
            var t = $(this).val()*1000;
			var d = new Date(t);
			var day = d.getDate();
			var month = d.getMonth()+1;
			$(this).parent().find(".day").html(day);
			$(this).parent().find(".month").html(month+"月");
        });
		//get qiniu uptoken
		get_uptoken();
    });
	function get_uptoken() 
	{
		$.ajax({
			url:"http://app.itimepost.com/image/uptoken",
			type:'POST',
			data:{type:0,token:"<?php echo $this->_var['token']; ?>"},
			dataType:"jsonp",
			success: function(data){
				//console.log(data);
				uptoken = data.data.uptoken;
				publish_id = data.data.publish_id;
				},
			error:function(e1,e2,e3){alert(e1.status);}	
		});
	}
	
	function gallery(i)
	{
		$("body").css("overflow","hidden");
		$(".gallery_back").css("top",$(document).scrollTop());
		$(".gallery_back").css("height",$(window).height());
		$(".gallery_back").show();
		current = i;
		$(".gallery .img-list").each(function(index, element) {
            if(index != current)
			{
				$(this).hide();
			}
			else
			{
				$(this).fadeIn(600);
			}
        });		
		set_center();
		//current = 3;
	}
	function gallery_pre()
	{
		if(current > 0)
		{
			current--;
			$(".gallery div.img-list").each(function(index, element) {
                
				if(index == current)
				{
					$(this).fadeIn(600);
				}
				else
				{
					$(this).hide();
				}
            });
		}
		else
		{
			current = total;
			gallery_pre();
		}
		set_center();
	}
	function gallery_next()
	{
		if(current < total-1)
		{
			current++;
			$(".gallery div.img-list").each(function(index, element) {
                if(index != current)
				{
					$(this).hide();
				}
				else
				{
					$(this).fadeIn(600);
				}
            });
		}
		else
		{
			current = -1;
			gallery_next();
		}
		set_center();
	}
	function set_center()
	{
		var back_height = $(".gallery_back").height();
		var height = $(".gallery").height();
		$(".gallery").css("margin-top",(back_height-height)/2);
		$(".gallery div:first-child").css("margin-top",(height-$(".gallery div:first-child").height())/2);
		$(".gallery div:last-child").css("margin-top",(height-$(".gallery div:first-child").height())/2);
	}
	function close_gallery()
	{
		$("body").css("overflow","");
		$(".gallery_back").hide();
	}
	function uploadImg()
	{
		$("body").css("overflow","hidden");
		$(".upload_back").css("top",$(document).scrollTop());
		$(".upload_back").css("height",$(window).height());
		$(".upload_back").show();
	}
	function close_upload()
	{
		$("body").css("overflow","");
		$(".upload_back").hide();
	}
	function choose_img()
	{
		/*
		if ( typeof(FileReader) === 'undefined' )
		{ 
			alert("抱歉，你的浏览器不支持 FileReader，建议使用chrome");
		}
		else
		{
			$("#file").click();
			document.getElementById("file").addEventListener( 'change',readFile,false );
		}
		*/
		var uploader = Qiniu.uploader({
		runtimes: 'html5,flash,html4',      // 上传模式,依次退化
		browse_button: 'upload_button',         // 上传选择的点选按钮，**必需**
		uptoken : uptoken, // uptoken 是上传凭证，由其他程序生成		
		get_new_uptoken: false,             // 设置上传文件的时候是否每次都重新获取新的 uptoken
		domain: '<?php echo $this->_var['prev']; ?>',     // bucket 域名，下载资源时用到，**必需**
		auto_start: true,                   // 选择文件后自动上传，若关闭需要自己绑定事件触发上传,
		unique_names: true,
		//x_vars : {
		//    自定义变量，参考http://developer.qiniu.com/docs/v6/api/overview/up/response/vars.html
		//    'time' : function(up,file) {
		//        var time = (new Date()).getTime();
				  // do something with 'time'
		//        return time;
		//    },
		//    'size' : function(up,file) {
		//        var size = file.size;
				  // do something with 'size'
		//        return size;
		//    }
		//},
		init: {
			'FilesAdded': function(up, files) {
				plupload.each(files, function(file) {
					// 文件添加进队列后,处理相关的事情
				});
			},
			'BeforeUpload': function(up, file) {
				   // 每个文件上传前,处理相关的事情
			},
			'UploadProgress': function(up, file) {
				   // 每个文件上传时,处理相关的事情
			},
			'FileUploaded': function(up, file, info) {
				   // 每个文件上传成功后,处理相关的事情
				   // 其中 info 是文件上传成功后，服务端返回的json，形式如
				   // {
				   //    "hash": "Fh8xVqod2MQ1mocfI4S4KpRL6D98",
				   //    "key": "gogopher.jpg"
				   //  }
				   // 参考http://developer.qiniu.com/docs/v6/api/overview/up/response/simple-response.html
	
				    var domain = up.getOption('domain');
					var json_info = JSON.parse(info);
				    var sourceLink = domain + "/" +json_info.key; //获取上传成功后的文件的Url
					console.log(json_info.key);
					key.push(json_info.key);
					upload_ok.push(true);
					$("#upload_button").attr("src",sourceLink);
			},
			'Error': function(up, err, errTip) {
				   //上传出错时,处理相关的事情
				   alert(up+"-"+err+"-"+errTip);
				   upload_ok.push(false);
			},
			'UploadComplete': function() {
				   //队列文件处理完毕后,处理相关的事情
			},
			'Key': function(up, file) {
				// 若想在前端对每个文件的key进行个性化处理，可以配置该函数
				// 该配置必须要在 unique_names: false , save_key: false 时才生效
	
				var key = "";
				// do something with key here
				return key;
			}
		}
	});
	

		
		
		
	}
	var temp_files;
	function readFile()
	{  
		//console.log(this.files);
		//$(".data").html("");
		//这里我们判断下类型如果不是图片就返回 去掉就可以上传任意文件
		temp_files = null;
		for(i=0;i<this.files.length;i++)
		{ 
			if(!/image\/\w+/.test(this.files[i].type))
			{ 
				alert("请确保文件为图像类型"); 
				return false; 
			} 
		}
		temp_files = this.files;
		console.log(temp_files);
		for(i=0;i<this.files.length;i++)
		{
			var reader = new FileReader(); 
			reader.readAsDataURL(this.files[i]); 
			reader.onload = function(e)
			{ 
				//var temp = "<span class='base64'>";
				//temp += this.result;
				//temp += "</span>";
				//$(".data").append(temp);
				$(".upload_main img").attr("src",this.result);
			}
		}
	}
	function upload_go()
	{
		/*
		$(".data .base64").each(function(index, element) 
		{
        	//alert($(this).html());
			$.ajax({
				url:"http://app.itimepost.com/image/add",
				type:"POST",
				dataType:"jsonp",
				data:{album_id:<?php echo $this->_var['album_id']; ?>,base64:$(this).html(),area:"PC PC PC",longitude:"0",latitude:"0",token:"<?php echo $this->_var['token']; ?>"},
				success: function(data){alert(data.image_id);},
				error:function(e1,e2,e3){alert(e1.status);}
			});    
        });
		*/
		for(i=0; i<upload_ok.length; i++)
		{
			if(!upload_ok[i])
			{
				alert("图片上传遇到了点儿问题，请稍后重试！");
				return;	
			}
		}
		$.ajax({
			url:"http://app.itimepost.com/publish/add2",
			dataType:"jsonp",
			type:"POST",
			data:{
				album_id:<?php echo $this->_var['album_id']; ?>,
				publish_id:publish_id,
				desc:encodeURI($("#desc").val()),
				longitude:"0",
				latitude:"0",
				device:2,
				key:JSON.stringify(key),
				token:"<?php echo $this->_var['token']; ?>"
				},
			success: function(data){close_upload();window.location.reload();},
			error:function(e1,e2,e3){alert(e1.status);}
			});
	}
</script>

</html>
