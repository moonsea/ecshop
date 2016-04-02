<?php if($this->registry->has('theme_options') == true) { 
$theme_options = $this->registry->get('theme_options');
$config = $this->registry->get('config'); ?>

<!-- Cart block -->
<div id="cart_block" class="dropdown">
	<div class="cart-heading dropdown-toogle" data-hover="dropdown" data-toggle="dropdown">
		<i class="cart-icon"></i>
		<p><span id="text-cart"><?php if($theme_options->get( 'shopping_cart_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'shopping_cart_text', $config->get( 'config_language_id' ) )); } else { echo '购物车'; } ?>:</span> <span id="cart-total"><?php echo $text_items; ?></span></p>
		<div></div>
	</div>
	
	<div class="dropdown-menu" id="cart_content"><div id="cart_content_ajax">
		<?php if ($products || $vouchers) { ?>
		<div class="mini-cart-info">
		  <table>
		    <?php foreach ($products as $product) { ?>
		    <tr>
		      <td class="image"><?php if ($product['thumb']) { ?>
		        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
		        <?php } ?></td>
		      <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
		        <div>
		          <?php foreach ($product['option'] as $option) { ?>
		          - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
		          <?php } ?>
		          <?php if ($product['recurring']): ?>
		          - <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
		          <?php endif; ?>
		        </div></td>
		      <td class="quantity">x&nbsp;<?php echo $product['quantity']; ?></td>
		      <td class="total"><?php echo $product['total']; ?></td>
		      <td class="remove"><a href="javascript:;" onclick="cart.remove('<?php echo $product['key']; ?>');" title="<?php echo $button_remove; ?>">x</a></td>
		    </tr>
		    <?php } ?>
		    <?php foreach ($vouchers as $voucher) { ?>
		    <tr>
		      <td class="image"></td>
		      <td class="name"><?php echo $voucher['description']; ?></td>
		      <td class="quantity">x&nbsp;1</td>
		      <td class="total"><?php echo $voucher['amount']; ?></td>
		      <td class="remove"><a href="javascript:;" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>">x</a></td>
		    </tr>
		    <?php } ?>
		  </table>
		</div>
		<div class="mini-cart-total">
		  <table>
		    <?php foreach ($totals as $total) { ?>
		    <tr>
		      <td class="right"><b><?php echo $total['title']; ?>:</b></td>
		      <td class="right"><?php echo $total['text']; ?></td>
		    </tr>
		    <?php } ?>
		  </table>
		</div>
		
		<div class="checkout"><a href="<?php echo $cart; ?>" class="button"><?php echo $text_cart; ?></a> &nbsp;<a href="<?php echo $checkout; ?>" class="button"><?php echo $text_checkout; ?></a></div>
		<?php } else { ?>
		<div class="empty"><?php echo $text_empty; ?></div>
		<?php } ?>
	</div></div>
</div>
<?php } ?>