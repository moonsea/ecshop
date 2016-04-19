<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<title><?php echo $this->_var['page_title']; ?></title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/fonts.css" rel="stylesheet">
<link href="css/animation.css" rel="stylesheet">
<link href="css/photo-list.css" rel="stylesheet">
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.min.js,common.js,global.js,compare.js,bootstrap.min.js')); ?>
</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>

<?php echo $this->fetch('library/goods_list.lbi'); ?>

<?php echo $this->fetch('library/pages.lbi'); ?>

<?php echo $this->fetch('library/page_footer.lbi'); ?>

</body>
</html>
