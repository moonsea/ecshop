<?php
$theme_options = $this->registry->get('theme_options');
$config = $this->registry->get('config');
?>

<!-- Product -->
<div class="product clearfix <?php if($theme_options->get( 'hover_product' ) != '0') { echo 'product-hover'; } ?>">
	<div class="left">
		<?php if ($product['thumb']) { ?>
			<?php if($product['special'] && $theme_options->get( 'display_text_sale' ) != '0') { ?>
				<?php $text_sale = 'Sale';
				if($theme_options->get( 'sale_text', $config->get( 'config_language_id' ) ) != '') {
					$text_sale = $theme_options->get( 'sale_text', $config->get( 'config_language_id' ) );
				} ?>
				<?php if($theme_options->get( 'type_sale' ) == '1') { ?>
					<?php $product_detail = $theme_options->getDataProduct( $product['product_id'] );
					$roznica_ceny = $product_detail['price']-$product_detail['special'];
					$procent = ($roznica_ceny*100)/$product_detail['price']; ?>
					<div class="sale">-<?php echo round($procent); ?>%</div>
				<?php } else { ?>
					<div class="sale"><?php echo $text_sale; ?></div>
				<?php } ?>
			<?php } ?>
			
			<div class="image <?php if($theme_options->get( 'product_image_effect' ) == '1') { echo 'image-swap-effect'; } ?>">
				<?php if($theme_options->get( 'quick_view' ) == 1) { ?>
				<div class="quickview">
					<a rel="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php if($theme_options->get( 'quickview_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'quickview_text', $config->get( 'config_language_id' ) )); } else { echo '快速查看'; } ?></a>
				</div>
				<?php } ?>
				
				<a href="<?php echo $product['href']; ?>">
					<?php if($theme_options->get( 'product_image_effect' ) == '1') {
						$nthumb = str_replace(' ', "%20", ($product['thumb']));
						$image_size = getimagesize($nthumb);
						$image_swap = $theme_options->productImageSwap($product['product_id'], $image_size[0], $image_size[1]);
						if($image_swap != '') echo '<img src="' . $image_swap . '" alt="' . $product['name'] . '" class="swap-image" />';
					} ?> 
					<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" <?php if($theme_options->get( 'product_image_effect' ) == '2') { echo 'class="zoom-image-effect"'; } ?> />
				</a>
			</div>
		<?php } else { ?>
			<div class="image">
				<?php if($theme_options->get( 'quick_view' ) == 1) { ?>
				<div class="quickview">
					<a rel="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php if($theme_options->get( 'quickview_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'quickview_text', $config->get( 'config_language_id' ) )); } else { echo '快速查看'; } ?></a>
				</div>
				<?php } ?>
				
				<a href="<?php echo $product['href']; ?>"><img src="image/no_image.jpg" alt="<?php echo $product['name']; ?>" <?php if($theme_options->get( 'product_image_effect' ) == '2') { echo 'class="zoom-image-effect"'; } ?> /></a>
			</div>
		<?php } ?>
	</div>
	<div class="right">
		<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
		<div class="price">
			<?php if (!$product['special']) { ?>
			<?php echo $product['price']; ?>
			<?php } else { ?>
			<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
			<?php } ?>
		</div>
		<?php if ($product['rating'] && $theme_options->get( 'display_rating' ) != '0') { ?>
		<div class="rating"><i class="fa fa-star<?php if($product['rating'] >= 1) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($product['rating'] >= 2) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($product['rating'] >= 3) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($product['rating'] >= 4) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($product['rating'] >= 5) { echo ' active'; } ?>"></i></div>
		<?php } ?>
		<?php if($theme_options->get( 'display_add_to_compare' ) != '0' || $theme_options->get( 'display_add_to_wishlist' ) != '0' || $theme_options->get( 'display_add_to_cart' ) != '0') { ?>
		<div class="only-hover">
			<?php if($theme_options->get( 'display_add_to_cart' ) != '0') { ?>
			 <a class="button" onclick='create.add("<?php if($access_token){echo $access_token;}?>","<?php echo $product['product_id'];?>","<?php echo $product['designstudio_id'];?>")'><span class="hidden-xs hidden-sm hidden-md"> <?php echo $button_create; ?></span></a>
			<?php } ?>
			
			<?php if($theme_options->get( 'display_add_to_compare' ) != '0' || $theme_options->get( 'display_add_to_wishlist' ) != '0') { ?>
			<ul>
				<!--
				<?php if($theme_options->get( 'display_add_to_compare' ) != '0') { ?>
				<li><a onclick="compare.add('<?php echo $product['product_id']; ?>');"><span>+</span> <?php if($theme_options->get( 'add_to_compare_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'add_to_compare_text', $config->get( 'config_language_id' ) ); } else { echo 'Add to compare'; } ?></a></li>
				<?php } ?>
				<?php if($theme_options->get( 'display_add_to_wishlist' ) != '0') { ?>
				<li><a onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span>+</span> <?php if($theme_options->get( 'add_to_wishlist_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'add_to_wishlist_text', $config->get( 'config_language_id' ) ); } else { echo 'Add to wishlist'; } ?></a></li>
				<?php } ?>-->
			</ul>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
</div>