<?php echo $header; 
$theme_options = $this->registry->get('theme_options');
$config = $this->registry->get('config'); 

 ?>
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
<div class="main-content full-width inner-page">
	<div class="background-content"></div>
	<div class="background">
		<div class="shadow"></div>
		<div class="pattern">
			<div class="container">	
			<div class="row">		
				<div class="col-sm-12">			
						<div class="row">
						<div class="col-sm-<?php echo $grid_content_top; ?> center-column">

								<?php if (isset($error_warning)) { ?>
									<?php if ($error_warning) { ?>
									<div class="warning">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<?php echo $error_warning; ?>
									</div>
									<?php } ?>
								<?php } ?>
								
								<?php if (isset($success)) { ?>
									<?php if ($success) { ?>
									<div class="success">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<?php echo $success; ?>
									</div>
									<?php } ?>
								<?php } ?>
</div>
	 <ul class="nav nav-tabs">
			<li <?php if($design_type=='not_order_design'){echo "class='active'";}?>><a  href="<?php echo $get_not_order_designs;?>" ><?php echo $tab_not_order_designs; ?></a></li>
            <li <?php if($design_type=='has_been_order_design'){echo "class='active'";}?>><a  href="<?php echo $get_has_been_order_designs;?>" ><?php echo $tab_has_been_order_designs; ?></a></li>
         
     </ul>

<div class="tab-content">
<div class="col-sm-12 center-column tab-pane <?php if($design_type=='not_order_design'){echo "active";}?>" id="tab-not_order_designs">

<?php if ($not_order_designs) { ?>
<table class="table table-bordered table-hover">
  <thead>
    <tr>
      <td class="text-center"><?php echo $column_image; ?></td>
      <td class="text-left"><?php echo $column_name; ?></td>
	  <td class="text-left"><?php echo $column_save_time; ?></td>
      <td class="text-left"><?php echo $column_model; ?></td>
      <td class="text-right"><?php echo $column_stock; ?></td>
      <td class="text-right"><?php echo $column_price; ?></td>
      <td class="text-right"><?php echo $column_action; ?></td>
    </tr>
  </thead>
  <?php foreach ($not_order_designs as $design) { ?>
  <tbody id="wishlist-row<?php echo $design['product_id']; ?>">
    <tr>
      <td class="text-center"><?php if ($design['thumb']) { ?>
        <a href="<?php echo $design['href']; ?>"><img src="<?php echo $design['thumb']; ?>" alt="<?php echo $design['name']; ?>" title="<?php echo $design['name']; ?>" /></a>
        <?php } ?></td>
      <td class="text-left"><a href="<?php echo $design['href']; ?>"><?php echo $design['name']; ?></a>
	  <br />
			<small><?php echo $text_design_title;?><?php echo $design['design_title']; ?></small>
			<br />
			<small><?php echo $text_design_state;?><?php if($design['has_confirmed']) {echo $text_has_confirmed;}else{echo $text_not_confirmed;}
			?></small></td>
			<td class="text-left"><div><?php echo $design['save_time']; ?></div><div><b>
			(<?php if(time()>strtotime($design['time_remaining'])){ echo $text_time_over;}else{
				echo $text_time_remaining.$design['time_remaining'];
			}?>)</b></div></td>
	  </td>
      <td class="text-left"><?php echo $design['model']; ?></td>
      <td class="text-right"><?php echo $design['stock']; ?></td>
      <td class="text-right"><?php if ($design['price']) { ?>
        <div class="price">
          <?php if (!$design['special']) { ?>
          <?php echo $design['price']; ?>
          <?php } else { ?>
          <b><?php echo $design['special']; ?></b> <s><?php echo $design['price']; ?></s>
          <?php } ?>
        </div>
        <?php } ?>
		<?php if(isset($design["design_option_data"])&&!empty($design["design_option_data"])){?>
		<?php  foreach($design['design_option_data'] as $design_option) {?>
		<div><b>(<?php echo $design_option['name'];?>)</b></div>
		<?php }
		}?>
		</td>
      <td class="text-left">
	  
	  <button type="button" onclick="cart.add('<?php echo $design["design_id"]?>','<?php echo $design["product_id"]; ?>','<?php echo $design["product_option_value_ids"];?>','1','<?php if(time()>strtotime($design["time_remaining"])){echo 1;}else{echo 0;}?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></button>
	  
	  <a style="cursor:pointer;" data-toggle="tooltip" title="<?php echo $button_create_change; ?>" class="btn btn-primary" onclick='create.change("<?php if($design['access_token']){echo $design['access_token'];}?>","<?php echo $design['design_id'];?>","<?php echo (int)$design['has_confirmed']?>","<?php if(time()>strtotime($design['time_remaining'])){echo 1;}else{echo 0;}?>")'><i class="fa fa-crop"></i></a>
	  
      <a href="<?php echo $design['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-times"></i></a>
	  
	  </td>
    </tr>
  </tbody>
  <?php } ?>
</table>


 <div class="row pagination-results">
    <div class="col-sm-6 text-left"><?php echo $not_order_design_pagination; ?></div>
	
    <div class="col-sm-6 text-right">
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
		<?php echo $not_order_design; ?>
	</div>
	
  </div>
  
<?php }else{?>
<p><?php echo $text_not_order_designs_empty;
}
?></p>

</div>

<div class="col-sm-12 center-column tab-pane <?php if($design_type=='has_been_order_design'){echo "active";}?>" id="tab-has_been_order_designs">
<?php if ($has_been_order_designs) { ?>
<table class="table table-bordered table-hover">
  <thead>
    <tr>
      <td class="text-center"><?php echo $column_image; ?></td>
      <td class="text-left"><?php echo $column_name; ?></td>
	  <td class="text-left"><?php echo $column_save_time; ?></td>
      <td class="text-left"><?php echo $column_model; ?></td>
      <td class="text-right"><?php echo $column_stock; ?></td>
      <td class="text-right"><?php echo $column_price; ?></td>
      <td class="text-right"><?php echo $column_action; ?></td>
    </tr>
  </thead>
  <?php foreach ($has_been_order_designs as $design) { ?>
  <tbody id="wishlist-row<?php echo $design['product_id']; ?>">
    <tr>
      <td class="text-center"><?php if ($design['thumb']) { ?>
        <a href="<?php echo $design['href']; ?>"><img src="<?php echo $design['thumb']; ?>" alt="<?php echo $design['name']; ?>" title="<?php echo $design['name']; ?>" /></a>
        <?php } ?></td>
      <td class="text-left"><a href="<?php echo $design['href']; ?>"><?php echo $design['name']; ?></a>
	  <br />
			<small><?php echo $text_design_title;?><?php echo $design['design_title']; ?></small>
			<br />
			<small><?php echo $text_design_state;?><?php if($design['has_confirmed']) {echo $text_has_confirmed;}else{echo $text_not_confirmed;}
			?></small></td> 
			<td class="text-left"><div><?php echo $design['save_time']; ?></div><div><b>
			(<?php if(time()>strtotime($design['time_remaining'])){ echo $text_time_over;}else{
				echo $text_time_remaining.$design['time_remaining'];
			}?>)</b></div></td>
	  </td>
      <td class="text-left"><?php echo $design['model']; ?></td>
      <td class="text-right"><?php echo $design['stock']; ?></td>
      <td class="text-right"><?php if ($design['price']) { ?>
        <div class="price">
          <?php if (!$design['special']) { ?>
          <?php echo $design['price']; ?>
          <?php } else { ?>
          <b><?php echo $design['special']; ?></b> <s><?php echo $design['price']; ?></s>
          <?php } ?>
        </div>
        <?php } ?>
		<?php if(isset($design["design_option_data"])&&!empty($design["design_option_data"])){?>
		<?php  foreach($design['design_option_data'] as $design_option) {?>
		<div><b>(<?php echo $design_option['name'];?>)</b></div>
		<?php }
		}?>
		</td>
      <td class="text-left">
	  
	  <button type="button" onclick="cart.add('<?php echo $design["design_id"]?>','<?php echo $design["product_id"]; ?>','<?php echo $design["product_option_value_ids"]?>','1','<?php if(time()>strtotime($design["time_remaining"])){echo 1;}else{echo 0;}?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></button>
	  
	  <a style="cursor:pointer;" data-toggle="tooltip" title="<?php echo $button_create_change; ?>" class="btn btn-primary" onclick='create.change("<?php if($design['access_token']){echo $design['access_token'];}?>","<?php echo $design['design_id'];?>","<?php echo (int)$design['has_confirmed']?>","<?php if(time()>strtotime($design['time_remaining'])){echo 1;}else{echo 0;}?>")'><i class="fa fa-crop"></i></a>
	  
      <a href="<?php echo $design['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-times"></i></a>
	  
	  </td>
    </tr>
  </tbody>
  <?php } ?>
</table>

 <div class="row pagination-results">
    <div class="col-sm-6 text-left"><?php echo $has_been_order_design_pagination; ?></div>
    <div class="col-sm-6 text-right">
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
	<?php echo $has_been_order_design; ?></div>
  </div>
  
  
<?php }else{?>
<p><?php echo $text_has_been_order_designs_empty;
}
?></p>

</div>

</div>

 




<div class="buttons clearfix">
  <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
</div>
  </div>
			
			
					
				</div>
				</div>
				
			</div>
		</div>
	</div>				  
</div>

<?php echo $footer; ?>