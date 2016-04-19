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
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.min.js,bootstrap.min.js')); ?>


</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>


<div class="cover-img" style="background-image:url(<?php echo $this->_var['goods']['goods_img']; ?>); margin-top:20px; margin-bottom:20px;"></div>
<center>
	<h1>《<?php echo $this->_var['goods']['goods_name']; ?>》</h1>
    <p class="f16">作者：空格</p>
    <p style="max-width:400px;" class="line-height-24 f14">
    	<?php echo $this->_var['goods']['goods_brief']; ?>
    </p>
    <p class="mt-40 mb-40">
        <span><a href="#" class="mylabel-666 f14">上传照片</a></span>
        <span><a href="#" class="mylabel-900 f14">制作纪念册</a></span>
    </p>
</center>
<div class="liner"></div>



	<div class="container mb-40">
    	<ul class="list-group">
        	<li class="list-unstyled mt-20 mb-20 text-center height-auto">
            	<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                	<img src="img/user.jpg" class="img-responsive myborder img-circle"/>
                    <span class="f36 font2">18</span><br>
                    <span class="f30 font2">3月</span>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 height-auto" style="border-bottom:2px solid #ccc; padding-bottom:30px;">
                <?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['picture']):
        $this->_foreach['no']['iteration']++;
?>
                	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 mb-5 img" style="background:url(<?php echo $this->_var['picture']['img_url']; ?>) center center no-repeat; background-size:cover; border:5px solid #fff;">
                    </div>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <!--
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 f16 f-gray" style="text-align:left">
                        姚总监：哎哟哟，屯子里边发生了好多好多的事情哟
                    </div>
                -->
                </div>
            </li>
        </ul>
    </div>



<?php echo $this->fetch('library/page_footer.lbi'); ?>     
     
     
</body>

<script type="text/javascript">
	var goods_id = <?php echo $this->_var['goods_id']; ?>;
	var goodsattr_style = <?php echo empty($this->_var['cfg']['goodsattr_style']) ? '1' : $this->_var['cfg']['goodsattr_style']; ?>;
	var gmt_end_time = <?php echo empty($this->_var['promote_end_time']) ? '0' : $this->_var['promote_end_time']; ?>;
	<?php $_from = $this->_var['lang']['goods_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
	var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	var goodsId = <?php echo $this->_var['goods_id']; ?>;
	var now_time = <?php echo $this->_var['now_time']; ?>;
	$().ready(function(e) {
        $(".img").each(function(index, element) {
            $(this).height($(this).width());
        });
    });
</script>

</html>
