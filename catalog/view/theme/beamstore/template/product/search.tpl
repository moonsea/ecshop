<?php echo $header; 
$theme_options = $this->registry->get('theme_options');
$config = $this->registry->get('config'); 
include('catalog/view/theme/'.$config->get('config_template').'/template/new_elements/wrapper_top.tpl'); ?>

<div id="content">
	<label class="control-label" for="input-search"><b><?php echo $entry_search; ?></b></label>
	<div class="row" id="content-search">
	  <div class="col-sm-4">
	    <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
	  </div>
	  <div class="col-sm-3">
	    <select name="category_id" class="form-control">
	      <option value="0"><?php echo $text_category; ?></option>
	      <?php foreach ($categories as $category_1) { ?>
	      <?php if ($category_1['category_id'] == $category_id) { ?>
	      <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
	      <?php } else { ?>
	      <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
	      <?php } ?>
	      <?php foreach ($category_1['children'] as $category_2) { ?>
	      <?php if ($category_2['category_id'] == $category_id) { ?>
	      <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
	      <?php } else { ?>
	      <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
	      <?php } ?>
	      <?php foreach ($category_2['children'] as $category_3) { ?>
	      <?php if ($category_3['category_id'] == $category_id) { ?>
	      <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
	      <?php } else { ?>
	      <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
	      <?php } ?>
	      <?php } ?>
	      <?php } ?>
	      <?php } ?>
	    </select>
	  </div>
	  <div class="col-sm-3" style="padding-top: 7px">
	    <label class="checkbox-inline">
	      <?php if ($sub_category) { ?>
	      <input type="checkbox" name="sub_category" value="1" checked="checked" />
	      <?php } else { ?>
	      <input type="checkbox" name="sub_category" value="1" />
	      <?php } ?>
	      <?php echo $text_sub_category; ?></label>
	  </div>
	</div>
	<p>
	  <label class="checkbox-inline">
	    <?php if ($description) { ?>
	    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
	    <?php } else { ?>
	    <input type="checkbox" name="description" value="1" id="description" />
	    <?php } ?>
	    <?php echo $entry_description; ?></label>
	</p>
	<input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" style="margin-top: 10px" />
	<h2 style="padding-top: 40px"><?php echo $text_search; ?></h2>
  
  <?php if ($products) { ?>
  <!-- Filter -->
  <div class="product-filter clearfix">
  	<div class="options">
  		<div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  		
  		<div class="button-group display" data-toggle="buttons-radio">
  			<button id="grid" <?php if($theme_options->get('default_list_grid') != '1') { echo 'class="active"'; } ?> rel="tooltip" title="Grid" onclick="display('grid');"><i class="fa fa-th-large"></i></button>
  			<button id="list" <?php if($theme_options->get('default_list_grid') == '1') { echo 'class="active"'; } ?> rel="tooltip" title="List" onclick="display('list');"><i class="fa fa-th-list"></i></button>
  		</div>
  	</div>
  	
  	<div class="list-options">
  		<div class="sort">
  			<?php echo $text_sort; ?>
  			<select onchange="location = this.value;">
  			  <?php foreach ($sorts as $sorts) { ?>
  			  <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
  			  <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
  			  <?php } else { ?>
  			  <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
  			  <?php } ?>
  			  <?php } ?>
  			</select>
  		</div>
  		
  		<div class="limit">
  			<?php echo $text_limit; ?>
  			<select onchange="location = this.value;">
  			  <?php foreach ($limits as $limits) { ?>
  			  <?php if ($limits['value'] == $limit) { ?>
  			  <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
  			  <?php } else { ?>
  			  <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
  			  <?php } ?>
  			  <?php } ?>
  			</select>
  		</div>
  	</div>
  </div>
  
  <!-- Products list -->
  <div class="product-list"<?php if($theme_options->get('default_list_grid') == '1') { echo ' style="display:none;"'; } ?>>
  	<?php foreach ($products as $product) { ?>
  	<!-- Product -->
  	<div>
  		<div class="row">
  			<div class="image col-sm-3">
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
  				<?php if($product['thumb']) { ?>
  				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
  				<?php } else { ?>
  				<a href="<?php echo $product['href']; ?>"><img src="image/no_image.jpg" alt="<?php echo $product['name']; ?>" /></a>
  				<?php } ?>
  			</div>
  			
  			<div class="name-desc col-sm-6">
  				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
  				<div class="description"><?php echo $product['description']; ?></div>
  				<?php if ($product['rating']) { ?>
  				<div class="rating-reviews clearfix">
  					<div class="rating"><i class="fa fa-star<?php if($product['rating'] >= 1) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($product['rating'] >= 2) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($product['rating'] >= 3) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($product['rating'] >= 4) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($product['rating'] >= 5) { echo ' active'; } ?>"></i></div>
  				</div>
  				<?php } ?>
  			</div>
  			
  			<div class="actions col-sm-3">
  				<div>
  					<div class="price">
  						<?php if (!$product['special']) { ?>
  						<?php echo $product['price']; ?>
  						<?php } else { ?>
  						<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
  						<?php } ?>
  					</div>
  					<div class="add-to-cart"><a class="button" onclick='create.add("<?php if($access_token){echo $access_token;}?>","<?php echo $product['product_id'];?>","<?php echo $product['designstudio_id'];?>")'><span class="hidden-xs hidden-sm hidden-md"> <?php echo $button_create; ?></span></a></div>
  					
  					<ul><!--
  						<li>+ <a onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php if($theme_options->get( 'add_to_compare_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'add_to_compare_text', $config->get( 'config_language_id' ) ); } else { echo 'Add to compare'; } ?></a></li>
  						<li>+ <a onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><?php if($theme_options->get( 'add_to_wishlist_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'add_to_wishlist_text', $config->get( 'config_language_id' ) ); } else { echo 'Add to wishlist'; } ?></a></li>-->
  					</ul>
  				</div>
  			</div>
  		</div>
  	</div>
  	<?php } ?>
  </div>
  
  <!-- Products grid -->
  <?php 
  $class = 3; 
  $row = 4; 
  
  if($theme_options->get( 'product_per_pow' ) == 6) { $class = 2; }
  if($theme_options->get( 'product_per_pow' ) == 5) { $class = 25; }
  if($theme_options->get( 'product_per_pow' ) == 3) { $class = 4; }
  
  if($theme_options->get( 'product_per_pow' ) > 1) { $row = $theme_options->get( 'product_per_pow' ); } 
  ?>
  <div class="product-grid"<?php if(!($theme_options->get('default_list_grid') == '1')) { echo ' style="display:none;"'; } ?>>
  	<div class="row">
	  	<?php $row_fluid = 0; foreach ($products as $product) { $row_fluid++; ?>
		  	<?php $r=$row_fluid-floor($row_fluid/$row)*$row; if($row_fluid>$row && $r == 1) { echo '</div><div class="row">'; } ?>
		  	<div class="col-sm-<?php echo $class; ?> col-xs-6">
		  	    <?php include('catalog/view/theme/'.$config->get('config_template').'/template/new_elements/product.tpl'); ?>
		  	</div>
	    <?php } ?>
    </div>
  </div>
  <div class="row pagination-results">
    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
    <div class="col-sm-6 text-right"><?php echo $results; ?></div>
  </div>
  <?php } else { ?>
  <p style="padding-bottom: 10px"><?php echo $text_empty; ?></p>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#content-search input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content-search input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

function display(view) {

	if (view == 'list') {
		$('.product-grid').css("display", "none");
		$('.product-list').css("display", "block");

		$('.display').html('<button id="grid" rel="tooltip" title="Grid" onclick="display(\'grid\');"><i class="fa fa-th-large"></i></button> <button class="active" id="list" rel="tooltip" title="List" onclick="display(\'list\');"><i class="fa fa-th-list"></i></button>');
		
		$.cookie('display', 'list'); 
	} else {
	
		$('.product-grid').css("display", "block");
		$('.product-list').css("display", "none");
					
		$('.display').html('<button class="active" id="grid" rel="tooltip" title="Grid" onclick="display(\'grid\');"><i class="fa fa-th-large"></i></button> <button id="list" rel="tooltip" title="List" onclick="display(\'list\');"><i class="fa fa-th-list"></i></button>');
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

if (view) {
	display(view);
}
//--></script> 
<?php include('catalog/view/theme/'.$config->get('config_template').'/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>