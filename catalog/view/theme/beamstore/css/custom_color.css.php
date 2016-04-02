<?php header('Content-type: text/css; charset=utf-8'); ?>

<?php if(!isset($_GET['color_status'])) { ?>
	<?php if($_GET['body_font_text'] != '') { ?>
	body,
	.dropdown-menu,
	textarea, 
	input[type="text"], 
	input[type="password"], 
	input[type="datetime"], 
	input[type="datetime-local"], 
	input[type="date"], 
	input[type="month"], 
	input[type="time"], 
	input[type="week"], 
	input[type="number"], 
	input[type="email"], 
	input[type="url"], 
	input[type="search"], 
	input[type="tel"], 
	input[type="color"], 
	.uneditable-input,
	select,
	.search_form .button-search,
	.search_form .button-search2,
	.product-filter .options .button-group button {
		color: #<?php echo $_GET['body_font_text']; ?>;
	}
	
	.ui-autocomplete li a {
		color: #<?php echo $_GET['body_font_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['body_font_links'] != '') { ?>
	a,
	.dropdown-menu a,
	.vertical ul.megamenu > li > a,
	.filter-product .filter-tabs ul > li.active > a,
	.filter-product .filter-tabs ul > li.active > a:hover,
	.filter-product .filter-tabs ul > li.active > a:focus {
		color: #<?php echo $_GET['body_font_links']; ?>;
	}
	
	@media (max-width: 960px) {
		.responsive ul.megamenu > li > a {
			color: #<?php echo $_GET['body_font_links']; ?> !important;
		}
	}
	<?php } ?>
	
	<?php if($_GET['body_font_links_hover'] != '') { ?>
	a:hover,
	.box-category ul li a.active,
	.box-category ul li:hover > a,
	.box-category ul li ul a:before,
	.box-category ul li .head a,
	#categorymenu ul li ul li a:before,
	ul.contact-us li span,
	.product-list .actions > div ul,
	.product-info .cart .links a:before,
	.product-grid .product .only-hover ul li a,
	.product-list .name-desc .rating-reviews .reviews span,
	.product-list .actions > div ul,
	.main-content .content > ul li:before,
	.center-column .list-unstyled li:before,
	.breadcrumb .container ul li:before,
	ul.megamenu li .sub-menu .content .static-menu .menu ul ul li:before,
	ul.megamenu li .sub-menu .content .hover-menu a:before,
	.category-wall .name a,
	.breadcrumb .container ul li:last-child a {
		color: #<?php echo $_GET['body_font_links_hover']; ?>;
	}
	
	.product-filter .options .button-group button:hover, 
	.product-filter .options .button-group .active {
		background: #<?php echo $_GET['body_font_links_hover']; ?>;
	}
	
	.box-category ul li .head a {
		border-color: #<?php echo $_GET['body_font_links_hover']; ?>;
	}
	
	@media (max-width: 960px) {
		.responsive ul.megamenu > li.active .close-menu:before,
		.responsive ul.megamenu > li.active > a,
		.responsive ul.megamenu > li > a:hover {
			color: #<?php echo $_GET['body_font_links_hover']; ?> !important;
		}
	}
	
	@media (max-width: 767px) {
		.responsive .horizontal ul.megamenu li .sub-menu .content .hover-menu .menu ul li a:before, 
		.responsive .horizontal ul.megamenu li .sub-menu .content .static-menu .menu ul li a:before {
			color: #<?php echo $_GET['body_font_links_hover']; ?> !important;
		}
	}
	<?php } ?>
	
	<?php if($_GET['body_price_text'] != '') { ?>
	.compare-info .price-new, 
	.product-grid .product .price, 
	.hover-product .price,
	.product-list .actions > div .price,
	.product-info .price .price-new,
	ul.megamenu li .product .price,
	.mini-cart-total td:last-child,
	.cart-total table tr td:last-child,
	.mini-cart-info td.total,
	#quickview .price .price-new {
		color: #<?php echo $_GET['body_price_text']; ?>;
	}
	
	.ui-autocomplete li span.price {
		color: #<?php echo $_GET['body_price_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['body_price_new_text'] != '') { ?>
	.price-new {
		color: #<?php echo $_GET['body_price_new_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['body_price_old_text'] != '') { ?>
	.price-old {
		color: #<?php echo $_GET['body_price_old_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['body_background_color'] != '') { ?>
	body {
		background: #<?php echo $_GET['body_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['input_border_color'] != '') { ?>
	textarea, 
	input[type="text"], 
	input[type="password"], 
	input[type="datetime"], 
	input[type="datetime-local"], 
	input[type="date"], 
	input[type="month"], 
	input[type="time"], 
	input[type="week"], 
	input[type="number"], 
	input[type="email"], 
	input[type="url"], 
	input[type="search"], 
	input[type="tel"], 
	input[type="color"], 
	.uneditable-input,
	select {
		border-color: #<?php echo $_GET['input_border_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['input_focus_border_color'] != '') { ?>
	textarea:focus,
	input[type="text"]:focus,
	input[type="password"]:focus,
	input[type="datetime"]:focus,
	input[type="datetime-local"]:focus,
	input[type="date"]:focus,
	input[type="month"]:focus,
	input[type="time"]:focus,
	input[type="week"]:focus,
	input[type="number"]:focus,
	input[type="email"]:focus,
	input[type="url"]:focus,
	input[type="search"]:focus,
	input[type="tel"]:focus,
	input[type="color"]:focus,
	.uneditable-input:focus {
		border-color: #<?php echo $_GET['input_focus_border_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['header_background_color'] != '') { ?>
	header {
		background: #<?php echo $_GET['header_background_color']; ?>;
	}
	<?php } ?>

	<?php if($_GET['top_bar_text'] != '') { ?>
	#top-bar .container,
	#top-bar .container > div > div > div > a,
	#top-bar .container > div > div > form > div > a,
	#top-bar .header-links a {
		color: #<?php echo $_GET['top_bar_text']; ?>;
	}
	
	#top-bar .dropdown .caret {
		border-top: 4px solid #<?php echo $_GET['top_bar_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['top_bar_background_color'] != '') { ?>
	#top-bar .background {
		background: #<?php echo $_GET['top_bar_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['top_bar_border_color'] != '') { ?>
	#top-bar .background,
	#top-bar-right .dropdown {
		border-color: #<?php echo $_GET['top_bar_border_color']; ?>;
	}
	<?php } ?>

	<?php if($_GET['top_cart_arrow_background_gradient_top'] != '' && $_GET['top_cart_arrow_background_gradient_bottom'] != '') { ?>
	#top #cart_block .cart-heading div {
		background: #<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 0%, #<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 50%, #<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 51%, #<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?>), color-stop(50%,#<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?>), color-stop(51%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?>), color-stop(100%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 50%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 50%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 50%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 100%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?> 50%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?> 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#<?php echo $_GET['top_cart_arrow_background_gradient_top']; ?>', endColorstr='#<?php echo $_GET['top_cart_arrow_background_gradient_bottom']; ?>',GradientType=0 ); /* IE6-9 */
	}
	<?php } ?>
	
	<?php if($_GET['top_cart_text_color'] != '') { ?>
	#top #cart_block .cart-heading p {
		color: #<?php echo $_GET['top_cart_text_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['top_cart_icon_color'] != '') { ?>
	#top #cart_block .cart-heading .cart-icon {
		background-color: #<?php echo $_GET['top_cart_icon_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['menu_main_links'] != '') { ?>
	ul.megamenu > li > a,
	.megamenuToogle-wrapper .container {
		color: #<?php echo $_GET['menu_main_links']; ?>;
	}
	
	.megamenuToogle-wrapper .container > div span {
		background: #<?php echo $_GET['menu_main_links']; ?>;
	}
	
	<?php if($_GET['menu_main_links'] != 'ffffff' && $_GET['menu_main_links'] != 'fff') { ?>
	ul.megamenu > li > a,
	.megamenuToogle-wrapper .container {
		text-shadow: 1px 1px 1px #fff;
	}
	<?php } ?>
	<?php } ?>
	
	<?php if($_GET['menu_background_gradient_top'] != '' && $_GET['menu_background_gradient_bottom'] != '') { ?>
	.megamenu-wrapper,
	.megamenuToogle-wrapper {
		background: #<?php echo $_GET['menu_background_gradient_top']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['menu_background_gradient_top']; ?> 0%, #<?php echo $_GET['menu_background_gradient_top']; ?> 50%, #<?php echo $_GET['menu_background_gradient_bottom']; ?> 51%, #<?php echo $_GET['menu_background_gradient_bottom']; ?> 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['menu_background_gradient_top']; ?>), color-stop(50%,#<?php echo $_GET['menu_background_gradient_top']; ?>), color-stop(51%,#<?php echo $_GET['menu_background_gradient_bottom']; ?>), color-stop(100%,#<?php echo $_GET['menu_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['menu_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_background_gradient_top']; ?> 50%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['menu_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_background_gradient_top']; ?> 50%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['menu_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_background_gradient_top']; ?> 50%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 100%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['menu_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_background_gradient_top']; ?> 50%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#<?php echo $_GET['menu_background_gradient_top']; ?>', endColorstr='#<?php echo $_GET['menu_background_gradient_bottom']; ?>',GradientType=0 ); /* IE6-9 */
	}
	<?php } ?>
	
	<?php if($_GET['menu_hover_background_color']) { ?>
	ul.megamenu > li > a:hover, 
	ul.megamenu > li.active > a, 
	ul.megamenu > li.home > a, 
	ul.megamenu > li:hover > a {
		background: #<?php echo $_GET['menu_hover_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['menu_icon_home_color'] != '') { ?>
	ul.megamenu > li.home > a {
		color: #<?php echo $_GET['menu_icon_home_color']; ?>;
	}
	
	<?php if($_GET['menu_icon_home_color'] != 'ffffff' && $_GET['menu_icon_home_color'] != 'fff') { ?>
	ul.megamenu > li.home > a {
		text-shadow: 1px 1px 1px #fff;
	}
	<?php } ?>
	<?php } ?>
	
	<?php if($_GET['menu_icon_home_background_top_color'] != '' && $_GET['menu_icon_home_background_bottom_color'] != '') { ?>
	ul.megamenu > li.home > a {
		background: #<?php echo $_GET['menu_icon_home_background_top_color']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['menu_icon_home_background_top_color']; ?> 0%, #<?php echo $_GET['menu_icon_home_background_top_color']; ?> 50%, #<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 51%, #<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['menu_icon_home_background_top_color']; ?>), color-stop(50%,#<?php echo $_GET['menu_icon_home_background_top_color']; ?>), color-stop(51%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?>), color-stop(100%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['menu_icon_home_background_top_color']; ?> 0%,#<?php echo $_GET['menu_icon_home_background_top_color']; ?> 50%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 51%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['menu_icon_home_background_top_color']; ?> 0%,#<?php echo $_GET['menu_icon_home_background_top_color']; ?> 50%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 51%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['menu_icon_home_background_top_color']; ?> 0%,#<?php echo $_GET['menu_icon_home_background_top_color']; ?> 50%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 51%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 100%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['menu_icon_home_background_top_color']; ?> 0%,#<?php echo $_GET['menu_icon_home_background_top_color']; ?> 50%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 51%,#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?> 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#<?php echo $_GET['menu_icon_home_background_top_color']; ?>', endColorstr='#<?php echo $_GET['menu_icon_home_background_bottom_color']; ?>',GradientType=0 ); /* IE6-9 */
	}
	<?php } ?>
	
	<?php if($_GET['breadcrumb_link_color'] != '') { ?>
	.breadcrumb .container ul li a {
		color: #<?php echo $_GET['breadcrumb_link_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['breadcrumb_link_active_color'] != '') { ?>
	.breadcrumb .container ul li:last-child a,
	.breadcrumb .container ul li:before {
		color: #<?php echo $_GET['breadcrumb_link_active_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['breadcrumb_page_name_color'] != '') { ?>
	.breadcrumb .container h1 {
		color: #<?php echo $_GET['breadcrumb_page_name_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['slider_bullet_background_color'] != '') { ?>
	.camera_wrap .camera_pag .camera_pag_ul li,
	.camera_wrap .owl-controls .owl-pagination span,
	.tp-bullets .bullet {
		background: #<?php echo $_GET['slider_bullet_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['slider_bullet_active_background_color'] != '') { ?>
	.camera_wrap .camera_pag .camera_pag_ul li.cameracurrent,
	.tp-bullets .selected, 
	.camera_wrap .owl-controls .owl-pagination .active span,
	.tp-bullets .bullet:hover {
		background: #<?php echo $_GET['slider_bullet_active_background_color']; ?>;
	}
	<?php } ?>

	<?php if($_GET['sale_color_text'] != '') { ?>
	.sale {
		color: #<?php echo $_GET['sale_color_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['sale_background_gradient_top'] != '' && $_GET['sale_background_gradient_bottom'] != '') { ?>
	.sale {
		background: #<?php echo $_GET['sale_background_gradient_top']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['sale_background_gradient_top']; ?> 0%, #<?php echo $_GET['sale_background_gradient_top']; ?> 50%, #<?php echo $_GET['sale_background_gradient_bottom']; ?> 51%, #<?php echo $_GET['sale_background_gradient_bottom']; ?> 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['sale_background_gradient_top']; ?>), color-stop(50%,#<?php echo $_GET['sale_background_gradient_top']; ?>), color-stop(51%,#<?php echo $_GET['sale_background_gradient_bottom']; ?>), color-stop(100%,#<?php echo $_GET['sale_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['sale_background_gradient_top']; ?> 0%,#<?php echo $_GET['sale_background_gradient_top']; ?> 50%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['sale_background_gradient_top']; ?> 0%,#<?php echo $_GET['sale_background_gradient_top']; ?> 50%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['sale_background_gradient_top']; ?> 0%,#<?php echo $_GET['sale_background_gradient_top']; ?> 50%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 100%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['sale_background_gradient_top']; ?> 0%,#<?php echo $_GET['sale_background_gradient_top']; ?> 50%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#<?php echo $_GET['sale_background_gradient_top']; ?>', endColorstr='#<?php echo $_GET['sale_background_gradient_bottom']; ?>',GradientType=0 ); /* IE6-9 */
	}
	<?php } ?>
	
	<?php if($_GET['ratings_background_gradient_top'] != '' && $_GET['ratings_background_gradient_bottom'] != '') { ?>
	.rating i {
		color: #<?php echo $_GET['ratings_background_gradient_top']; ?>;
	}
	
	.rating i, 
	.rating i:before {
	    background: -webkit-gradient(linear, left top, left bottom, from(#<?php echo $_GET['ratings_background_gradient_top']; ?>), to(#<?php echo $_GET['ratings_background_gradient_bottom']; ?>));
	    -webkit-background-clip: text;
	    -webkit-text-fill-color: transparent;
	    display: initial;
	}
	<?php } ?>
	
	<?php if($_GET['ratings_active_background_gradient_top'] != '' && $_GET['ratings_active_background_gradient_bottom'] != '') { ?>
	.rating i.active {
		color: #<?php echo $_GET['ratings_active_background_gradient_top']; ?>;
	}
	
	.rating i.active, 
	.rating i.active:before {
	    background: -webkit-gradient(linear, left top, left bottom, from(#<?php echo $_GET['ratings_active_background_gradient_top']; ?>), to(#<?php echo $_GET['ratings_active_background_gradient_bottom']; ?>));
	    -webkit-background-clip: text;
	    -webkit-text-fill-color: transparent;
	    display: initial;
	}
	<?php } ?>
	
	<?php if($_GET['buttons_color_text']) { ?>
	.button,
	.btn {
		color: #<?php echo $_GET['buttons_color_text']; ?> !important;
	}
	
	<?php if($_GET['buttons_color_text'] != 'ffffff' && $_GET['buttons_color_text'] != 'fff') { ?>
	.button,
	.btn {
		text-shadow: 1px 1px 1px #fff;
	}
	<?php } ?>
	<?php } ?>
	
	<?php if($_GET['buttons_background_gradient_top'] != '' && $_GET['buttons_background_gradient_bottom'] != '') { ?>
	.button,
	.btn {
		background: #<?php echo $_GET['buttons_background_gradient_top']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_top']; ?> 0%, #<?php echo $_GET['buttons_background_gradient_top']; ?> 50%, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 51%, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['buttons_background_gradient_top']; ?>), color-stop(50%,#<?php echo $_GET['buttons_background_gradient_top']; ?>), color-stop(51%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?>), color-stop(100%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 50%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 50%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 50%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 100%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 50%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#<?php echo $_GET['buttons_background_gradient_top']; ?>', endColorstr='#<?php echo $_GET['buttons_background_gradient_bottom']; ?>',GradientType=0 ); /* IE6-9 */
	}
	
		.button:hover,
		.btn:hover {
			background: #<?php echo $_GET['buttons_background_gradient_bottom']; ?>; /* Old browsers */
			background: -moz-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 50%, #<?php echo $_GET['buttons_background_gradient_top']; ?> 51%, #<?php echo $_GET['buttons_background_gradient_top']; ?> 100%); /* FF3.6+ */
			background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?>), color-stop(50%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?>), color-stop(51%,#<?php echo $_GET['buttons_background_gradient_top']; ?>), color-stop(100%,#<?php echo $_GET['buttons_background_gradient_top']; ?>)); /* Chrome,Safari4+ */
			background: -webkit-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 50%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 51%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 100%); /* Chrome10+,Safari5.1+ */
			background: -o-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 50%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 51%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 100%); /* Opera 11.10+ */
			background: -ms-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 50%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 51%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 100%); /* IE10+ */
			background: linear-gradient(to bottom, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 50%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 51%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 100%); /* W3C */
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#<?php echo $_GET['buttons_background_gradient_bottom']; ?>', endColorstr='#<?php echo $_GET['buttons_background_gradient_top']; ?>',GradientType=0 ); /* IE6-9 */
		}
	<?php } ?>
	
	<?php if($_GET['second_buttons_color_text']) { ?>
	.buttons .left .button, 
	.buttons .center .button,
	.btn-default,
	.input-group-btn .btn-primary {
		color: #<?php echo $_GET['second_buttons_color_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['second_buttons_background_gradient_top'] != '' && $_GET['second_buttons_background_gradient_bottom'] != '') { ?>
	.buttons .left .button, 
	.buttons .center .button,
	.btn-default,
	.input-group-btn .btn-primary {
		background: #<?php echo $_GET['second_buttons_background_gradient_top']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 50%, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 51%, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?>), color-stop(50%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?>), color-stop(51%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>), color-stop(100%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 50%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 50%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 50%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 100%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 50%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 51%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#<?php echo $_GET['second_buttons_background_gradient_top']; ?>', endColorstr='#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>',GradientType=0 ); /* IE6-9 */
	}
	
		.buttons .left .button:hover, 
		.buttons .center .button:hover,
		.btn-default:hover,
		.input-group-btn .btn-primary:hover {
			background: #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>; /* Old browsers */
			background: -moz-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 50%, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 51%, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 100%); /* FF3.6+ */
			background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>), color-stop(50%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>), color-stop(51%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?>), color-stop(100%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?>)); /* Chrome,Safari4+ */
			background: -webkit-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 50%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 51%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 100%); /* Chrome10+,Safari5.1+ */
			background: -o-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 50%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 51%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 100%); /* Opera 11.10+ */
			background: -ms-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 50%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 51%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 100%); /* IE10+ */
			background: linear-gradient(to bottom, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 50%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 51%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 100%); /* W3C */
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>', endColorstr='#<?php echo $_GET['second_buttons_background_gradient_top']; ?>',GradientType=0 ); /* IE6-9 */
		}
	<?php } ?>
	
	<?php if($_GET['carousel_arrow_color']) { ?>
	.camera_wrap .owl-controls .owl-buttons .owl-next:after,
	.camera_wrap .owl-controls .owl-buttons .owl-prev:after,
	.nivo-directionNav a:after,
	.fullwidthbanner-container .tp-leftarrow:after,
	.fullwidthbanner-container .tp-rightarrow:after,
	.tab-content .prev-button span, 
	.tab-content .next-button span,
	.box > .prev span, 
	.box > .next span,
	.jcarousel-control-prev, 
	.jcarousel-control-next {
		color: #<?php echo $_GET['carousel_arrow_color']; ?>;
	}
	<?php } ?>

	<?php if($_GET['customfooter_color_text'] != '') { ?>
	.custom-footer .pattern,
	ul.contact-us li {
		color: #<?php echo $_GET['customfooter_color_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_color_heading'] != '') { ?>
	.custom-footer h4 {
		color: #<?php echo $_GET['customfooter_color_heading']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_color_icon_contact_us'] != '') { ?>
	ul.contact-us li i {
		color: #<?php echo $_GET['customfooter_color_icon_contact_us']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_border_color'] != '') { ?>
	.custom-footer h4,
	.custom-footer .background,
	.standard-body .custom-footer .background,
	.fb-like-box,
	ul.contact-us li i {
		border-color: #<?php echo $_GET['customfooter_border_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_background_color'] != '') { ?>
	.custom-footer .background,
	.standard-body .custom-footer .background {
		background: #<?php echo $_GET['customfooter_background_color']; ?>;
	}
	
	.custom-footer .pattern {
		background: none;
	}
	<?php } ?>
	
	<?php if($_GET['footer_color_text'] != '') { ?>
	.footer .pattern,
	.footer .pattern a,
	.copyright .pattern,
	.copyright .pattern a {
		color: #<?php echo $_GET['footer_color_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['footer_color_heading'] != '') { ?>
	.footer h4 {
		color: #<?php echo $_GET['footer_color_heading']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['footer_color_bullets'] != '') { ?>
	.footer ul li a:before {
		color: #<?php echo $_GET['footer_color_bullets']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['footer_border_color'] != '') { ?>
	.copyright .pattern {
		border-color: #<?php echo $_GET['footer_border_color']; ?>;
	}
	
	.footer .strip-line {
		background: #<?php echo $_GET['footer_border_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['footer_background_color'] != '') { ?>
	.footer .background,
	.standard-body .footer .background,
	.copyright .background,
	.standard-body .copyright .background {
		background: #<?php echo $_GET['footer_background_color']; ?>;
	}
	<?php } ?>
<?php } ?>

<?php if($_GET['font_status'] == '1') { ?>
body {
	font-size: <?php echo $_GET['body_font_px']; ?>px;
	font-weight: <?php echo $_GET['body_font_weight']*100; ?>;
	<?php if(isset($_GET['body_font'])) { ?>
	font-family: <?php echo $_GET['body_font']; ?>;
	<?php } ?>
}

.sale,
.product-list .name-desc .description {
	font-size: <?php echo $_GET['body_font_smaller_px']; ?>px;
}

ul.megamenu > li > a strong {
	font-size: <?php echo $_GET['categories_bar_px']; ?>px;
	font-weight: <?php echo $_GET['categories_bar_weight']*100; ?>;
	<?php if(isset($_GET['categories_bar_font'])) { ?>
	font-family: <?php echo $_GET['categories_bar_font']; ?>;
	<?php } ?>
}

.megamenuToogle-wrapper .container {
	font-weight: <?php echo $_GET['categories_bar_weight']*100; ?>;
	<?php if(isset($_GET['categories_bar_font'])) { ?>
	font-family: <?php echo $_GET['categories_bar_font']; ?>;
	<?php } ?>
}

.vertical ul.megamenu > li > a strong {
	font-weight: <?php echo $_GET['body_font_weight']*100; ?>;
}

.box .box-heading,
.center-column h1, 
.center-column h2, 
.center-column h3, 
.center-column h4, 
.center-column h5, 
.center-column h6 {
	font-size: <?php echo $_GET['headlines_px']; ?>px;
	font-weight: <?php echo $_GET['headlines_weight']*100; ?>;
	<?php if(isset($_GET['headlines_font'])) { ?>
	font-family: <?php echo $_GET['headlines_font']; ?>;
	<?php } ?>
}

.footer h4,
.custom-footer h4 {
	font-size: <?php echo $_GET['footer_headlines_px']; ?>px;
	font-weight: <?php echo $_GET['footer_headlines_weight']*100; ?>;
	<?php if(isset($_GET['footer_headlines_font'])) { ?>
	font-family: <?php echo $_GET['footer_headlines_font']; ?>;
	<?php } ?>
}

.breadcrumb .container h1 {
	font-size: <?php echo $_GET['page_name_px']; ?>px;
	font-weight: <?php echo $_GET['page_name_weight']*100; ?>;
	<?php if(isset($_GET['page_name_font'])) { ?>
	font-family: <?php echo $_GET['page_name_font']; ?>;
	<?php } ?>
}

.button {
	font-size: <?php echo $_GET['button_font_px']; ?>px;
	font-weight: <?php echo $_GET['button_font_weight']*100; ?>;
	<?php if(isset($_GET['button_font'])) { ?>
	font-family: <?php echo $_GET['button_font']; ?>;
	<?php } ?>
}

<?php if(isset($_GET['custom_price_font'])) { ?>
.product-grid .product .price, 
.hover-product .price, 
.product-list .actions > div .price, 
.product-info .price .price-new,
ul.megamenu li .product .price {
	font-family: <?php echo $_GET['custom_price_font']; ?>;
}
<?php } ?>

.product-grid .product .price,
.hover-product .price {
	font-size: <?php echo $_GET['custom_price_px_small']; ?>px;
	font-weight: <?php echo $_GET['custom_price_weight']*100; ?>;
}

.product-info .price .price-new {
	font-size: <?php echo $_GET['custom_price_px']; ?>px;
	font-weight: <?php echo $_GET['custom_price_weight']*100; ?>;
}

.product-list .actions > div .price {
	font-size: <?php echo $_GET['custom_price_px_medium']; ?>px;
	font-weight: <?php echo $_GET['custom_price_weight']*100; ?>;
}

.price-old {
	font-size: <?php echo $_GET['custom_price_px_old_price']; ?>px !important;
	font-weight: <?php echo $_GET['custom_price_weight']*100; ?> !important;
}
<?php } ?>