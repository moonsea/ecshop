

<div class="xm-box">
<h4 class="title"><span><?php echo htmlspecialchars($this->_var['goods_cat']['name']); ?></span> <a class="more" href="<?php echo $this->_var['goods_cat']['url']; ?>">更多</a></h4>
<div id="show_hot_area" class="clearfix">

 
      <?php $_from = $this->_var['cat_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_89683600_1437925571');if (count($_from)):
    foreach ($_from AS $this->_var['goods_0_89683600_1437925571']):
?>
      <div class="goodsItem">
       
           <a href="<?php echo $this->_var['goods_0_89683600_1437925571']['url']; ?>"><img src="<?php echo $this->_var['goods_0_89683600_1437925571']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_89683600_1437925571']['name']); ?>" class="goodsimg" /></a><br />
           <p class="f1"><a href="<?php echo $this->_var['goods_0_89683600_1437925571']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_89683600_1437925571']['name']); ?>"><?php echo $this->_var['goods_0_89683600_1437925571']['short_name']; ?></a></p>
           
           
 市场价：<font class="market"><?php echo $this->_var['goods_0_89683600_1437925571']['market_price']; ?></font> <br/>
      
           本店价：<font class="f1">
           <?php if ($this->_var['goods_0_89683600_1437925571']['promote_price'] != ""): ?>
          <?php echo $this->_var['goods_0_89683600_1437925571']['promote_price']; ?>
          <?php else: ?>
          <?php echo $this->_var['goods_0_89683600_1437925571']['shop_price']; ?>
          <?php endif; ?>
           </font>      
		    
        </div>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </div>
 
 
</div>
<div class="blank"></div>
