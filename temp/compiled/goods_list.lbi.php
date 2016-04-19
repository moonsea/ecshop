
    <ul class="list-group" id="list-group">
    <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
        <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8"><a href="<?php echo $this->_var['goods']['url']; ?>">《<?php echo $this->_var['goods']['name']; ?>》</a></h3>
                    <p class="f16 mt-5">作者:空格</p>
                    <p class="f14 line-height-24 mt-5 font2"><?php echo $this->_var['goods']['goods_brief']; ?></p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="<?php echo $this->_var['goods']['url']; ?>"><div class="list-img" style="background-image:url(<?php echo $this->_var['goods']['goods_img']; ?>)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </ul>
    
