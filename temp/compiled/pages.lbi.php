
<form name="selectPageForm" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
	<ul class="pager">
  <?php if ($this->_var['pager']['page_first']): ?><li><a href="<?php echo $this->_var['pager']['page_first']; ?>"><?php echo $this->_var['lang']['page_first']; ?> ...</a></li><?php endif; ?>
  <?php if ($this->_var['pager']['page_prev']): ?><li><a class="prev" href="<?php echo $this->_var['pager']['page_prev']; ?>"><?php echo $this->_var['lang']['page_prev']; ?></a></li><?php endif; ?>
  <?php if ($this->_var['pager']['page_count'] != 1): ?>
    <?php $_from = $this->_var['pager']['page_number']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      <?php if ($this->_var['pager']['page'] == $this->_var['key']): ?>
      <li class="active"><a href="javascript:;"><?php echo $this->_var['key']; ?></a></li>
      <?php else: ?>
      <li><a href="<?php echo $this->_var['item']; ?>"><?php echo $this->_var['key']; ?></a></li>
      <?php endif; ?>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  <?php endif; ?>

  <?php if ($this->_var['pager']['page_next']): ?><li><a href="<?php echo $this->_var['pager']['page_next']; ?>"><?php echo $this->_var['lang']['page_next']; ?></a></li><?php endif; ?>
  <?php if ($this->_var['pager']['page_last']): ?><li><a href="<?php echo $this->_var['pager']['page_last']; ?>">...<?php echo $this->_var['lang']['page_last']; ?></a></li><?php endif; ?>
  <?php if ($this->_var['pager']['page_kbd']): ?>
    <?php $_from = $this->_var['pager']['search']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      <?php if ($this->_var['key'] == 'keywords'): ?>
          <input type="hidden" name="<?php echo $this->_var['key']; ?>" value="<?php echo urldecode($this->_var['item']); ?>" />
        <?php else: ?>
          <input type="hidden" name="<?php echo $this->_var['key']; ?>" value="<?php echo $this->_var['item']; ?>" />
      <?php endif; ?>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    <kbd style="float:left; margin-left:8px; position:relative; bottom:3px;"><input type="text" name="page" onkeydown="if(event.keyCode==13)selectPage(this)" size="3" class="B_blue" /></kbd>
    <?php endif; ?>
    </ul>
</form>
<script type="Text/Javascript" language="JavaScript">
<!--

function selectPage(sel)
{
  sel.form.submit();
}

//-->
</script>
