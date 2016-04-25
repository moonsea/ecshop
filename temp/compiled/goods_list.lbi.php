
    <ul class="list-group" id="list-group">
    <?php $_from = $this->_var['photo_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'list');if (count($_from)):
    foreach ($_from AS $this->_var['list']):
?>
        <li class="list-unstyled f14">
            <div class="row">
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                    <h3 class="ml--8">
                        <a href="album.php?id=<?php echo $this->_var['list']['id']; ?>&prev=<?php echo $this->_var['prev']; ?>&token=<?php echo $this->_var['token']; ?>&img=<?php echo $this->_var['userimg']; ?>&name=<?php echo $this->_var['username']; ?>">
                        《<?php echo $this->_var['list']['album_name']; ?>》
                        </a>
                    </h3>
                    <p class="f16 mt-5">作者:<?php echo $this->_var['username']; ?></p>
                    <p class="f14 line-height-24 mt-5 font2"><?php echo $this->_var['list']['album_desc']; ?></p>
                </div>
                <div class="col-lg-5 col-md-5 col-xs-12">
                	<a href="album.php?id=<?php echo $this->_var['list']['id']; ?>"><div class="list-img" style="background-image:url(<?php echo $this->_var['prev']; ?>/<?php echo $this->_var['list']['img']; ?>)"></div></a>
                </div>
            	<div class="col-lg-1 col-md-1 hidden-xs"></div>
            </div>
        </li>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </ul>
    
