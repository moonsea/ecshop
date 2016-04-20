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
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.min.js,bootstrap.min.js')); ?>
</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>

<?php echo $this->fetch('library/goods_list.lbi'); ?>

<ul class="pager">
	<?php $_from = $this->_var['pages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
      <?php if ($this->_var['current_page'] == $this->_var['item']): ?>
      <li class="active"><a href="javascript:;"><?php echo $this->_var['item']; ?></a></li>
      <?php else: ?>
      <li><a href="list.php?page=<?php echo $this->_var['item']; ?>"><?php echo $this->_var['item']; ?></a></li>
      <?php endif; ?>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</ul>

<?php echo $this->fetch('library/page_footer.lbi'); ?>

</body>
</html>
