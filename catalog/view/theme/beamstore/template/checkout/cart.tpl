<?php echo $header; 
$theme_options = $this->registry->get('theme_options');
$config = $this->registry->get('config'); 
include('catalog/view/theme/' . $config->get('config_template') . '/template/new_elements/wrapper_top.tpl'); ?>

<div class="breadcrumb <?php if($theme_options->get( 'breadcrumb_layout' ) == 2) { echo 'fixed'; } else { echo 'full-width'; } ?>">
	<div class="background-breadcrumb"></div>
	<div class="background">
		<div class="shadow"></div>
		<div class="pattern">
			<div class="container">
				<div class="clearfix">
					<ul>
						<?php foreach ($breadcrumbs as $breadcrumb) { ?>
						<li><a href="<?php echo $breadcrumb['href']; ?>"><?php if($breadcrumb['text'] != '<i class="fa fa-home"></i>') { echo $breadcrumb['text']; } else { if($theme_options->get( 'home_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'home_text', $config->get( 'config_language_id' ) ); } else { echo 'Home'; } } ?></a></li>
						<?php } ?>
					</ul>
					
					<h1 id="title-page"><?php echo $heading_title; ?>
						<?php if(isset($weight)) { if ($weight) { ?>
						&nbsp;(<?php echo $weight; ?>)
						<?php } } ?>
					</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div class="table-responsive cart-info">
    <table class="table table-bordered">
      <thead>
        <tr>
          <td class="text-center"><?php echo $column_image; ?></td>
          <td class="text-center hidden-xs"><?php echo $column_name; ?></td>
          <td class="text-center hidden-xs"><?php echo $column_model; ?></td>
          <td class="text-center"><?php echo $column_quantity; ?></td>
          <td class="text-right hidden-xs"><?php echo $column_price; ?></td>
          <td class="text-right"><?php echo $column_total; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="text-center"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?>
            <div class="visible-xs"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?><div>
            </td>
          <td class="text-center hidden-xs"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if (!$product['stock']) { ?>
            <span class="text-danger">***</span>
            <?php } ?>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['reward']) { ?>
            <br />
            <small><?php echo $product['reward']; ?></small>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          <td class="text-center hidden-xs"><?php echo $product['model']; ?></td>
          <td class="text-center">
              <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
              &nbsp;
              <input type="image" src="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/img/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
              &nbsp;<a onclick="cart.remove('<?php echo $product['key']; ?>');"><img src="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/img/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a>
          </td>
          <td class="text-right hidden-xs"><?php echo $product['price']; ?></td>
          <td class="text-right"><?php echo $product['total']; ?></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $vouchers) { ?>
        <tr>
          <td></td>
          <td class="text-center hidden-xs"><?php echo $vouchers['description']; ?></td>
          <td class="text-center hidden-xs"></td>
          <td class="text-center">
          	<input type="text" name="" value="1" size="1" disabled="disabled" />
              &nbsp;<a onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><img src="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/img/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a>
          </td>
          <td class="text-right hidden-xs"><?php echo $vouchers['amount']; ?></td>
          <td class="text-right"><?php echo $vouchers['amount']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
</form>

<?php if ($coupon || $voucher || $reward || $shipping) { ?>
<h2><?php echo $text_next; ?></h2>
<p style="padding-bottom: 10px"><?php echo $text_next_choice; ?></p>
<div class="panel-group" id="accordion"><?php echo $coupon; ?><?php echo $voucher; ?><?php echo $reward; ?><?php echo $shipping; ?></div>
<?php } ?>

<div class="cart-total">
    <table>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
        <td class="text-right"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </table>
</div>
<div class="buttons">
  <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_shopping; ?></a></div>
  <div class="pull-right"><a href="<?php echo $checkout; ?>" class="btn btn-primary"><?php echo $button_checkout; ?></a></div>
</div>

<?php include('catalog/view/theme/' . $config->get('config_template') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>