<?php echo $header; ?>
<?php

function get_fonts() {
	$fonts = array(
		'standard',
		'ABeeZee',
		'Abel',
		'Abril Fatface',
		'Aclonica',
		'Acme',
		'Actor',
		'Adamina',
		'Advent Pro',
		'Aguafina Script',
		'Akronim',
		'Aladin',
		'Aldrich',
		'Alef',
		'Alegreya',
		'Alegreya SC',
		'Alex Brush',
		'Alfa Slab One',
		'Alice',
		'Alike',
		'Alike Angular',
		'Allan',
		'Allerta',
		'Allerta Stencil',
		'Allura',
		'Almendra',
		'Almendra Display',
		'Almendra SC',
		'Amarante',
		'Amaranth',
		'Amatic SC',
		'Amethysta',
		'Anaheim',
		'Andada',
		'Andika',
		'Angkor',
		'Annie Use Your Telescope',
		'Anonymous Pro',
		'Antic',
		'Antic Didone',
		'Antic Slab',
		'Anton',
		'Arapey',
		'Arbutus',
		'Arbutus Slab',
		'Architects Daughter',
		'Archivo Black',
		'Archivo Narrow',
		'Arial',
		'Arimo',
		'Arizonia',
		'Armata',
		'Artifika',
		'Arvo',
		'Asap',
		'Asset',
		'Astloch',
		'Asul',
		'Atomic Age',
		'Aubrey',
		'Audiowide',
		'Autour One',
		'Average',
		'Average Sans',
		'Averia Gruesa Libre',
		'Averia Libre',
		'Averia Sans Libre',
		'Averia Serif Libre',
		'Bad Script',
		'Balthazar',
		'Bangers',
		'Basic',
		'Battambang',
		'Baumans',
		'Bayon',
		'Belgrano',
		'Belleza',
		'BenchNine',
		'Bentham',
		'Berkshire Swash',
		'Bevan',
		'Bigelow Rules',
		'Bigshot One',
		'Bilbo',
		'Bilbo Swash Caps',
		'Bitter',
		'Black Ops One',
		'Bokor',
		'Bonbon',
		'Boogaloo',
		'Bowlby One',
		'Bowlby One SC',
		'Brawler',
		'Bree Serif',
		'Bubblegum Sans',
		'Bubbler One',
		'Buda',
		'Buenard',
		'Butcherman',
		'Butterfly Kids',
		'Cabin',
		'Cabin Condensed',
		'Cabin Sketch',
		'Caesar Dressing',
		'Cagliostro',
		'Calligraffitti',
		'Cambo',
		'Candal',
		'Cantarell',
		'Cantata One',
		'Cantora One',
		'Capriola',
		'Cardo',
		'Carme',
		'Carrois Gothic',
		'Carrois Gothic SC',
		'Carter One',
		'Caudex',
		'Cedarville Cursive',
		'Ceviche One',
		'Changa One',
		'Chango',
		'Chau Philomene One',
		'Chela One',
		'Chelsea Market',
		'Chenla',
		'Cherry Cream Soda',
		'Cherry Swash',
		'Chewy',
		'Chicle',
		'Chivo',
		'Cinzel',
		'Cinzel Decorative',
		'Clicker Script',
		'Coda',
		'Coda Caption',
		'Codystar',
		'Combo',
		'Comfortaa',
		'Coming Soon',
		'Concert One',
		'Condiment',
		'Content',
		'Contrail One',
		'Convergence',
		'Cookie',
		'Copse',
		'Corben',
		'Courgette',
		'Cousine',
		'Coustard',
		'Covered By Your Grace',
		'Crafty Girls',
		'Creepster',
		'Crete Round',
		'Crimson Text',
		'Croissant One',
		'Crushed',
		'Cuprum',
		'Cutive',
		'Cutive Mono',
		'Damion',
		'Dancing Script',
		'Dangrek',
		'Dawning of a New Day',
		'Days One',
		'Delius',
		'Delius Swash Caps',
		'Delius Unicase',
		'Della Respira',
		'Denk One',
		'Devonshire',
		'Didact Gothic',
		'Diplomata',
		'Diplomata SC',
		'Domine',
		'Donegal One',
		'Doppio One',
		'Dorsa',
		'Dosis',
		'Dr Sugiyama',
		'Droid Sans',
		'Droid Sans Mono',
		'Droid Serif',
		'Duru Sans',
		'Dynalight',
		'EB Garamond',
		'Eagle Lake',
		'Eater',
		'Economica',
		'Electrolize',
		'Elsie',
		'Elsie Swash Caps',
		'Emblema One',
		'Emilys Candy',
		'Engagement',
		'Englebert',
		'Enriqueta',
		'Erica One',
		'Esteban',
		'Euphoria Script',
		'Ewert',
		'Exo',
		'Expletus Sans',
		'Fanwood Text',
		'Fascinate',
		'Fascinate Inline',
		'Faster One',
		'Fasthand',
		'Fauna One',
		'Federant',
		'Federo',
		'Felipa',
		'Fenix',
		'Finger Paint',
		'Fjalla One',
		'Fjord One',
		'Flamenco',
		'Flavors',
		'Fondamento',
		'Fontdiner Swanky',
		'Forum',
		'Francois One',
		'Freckle Face',
		'Fredericka the Great',
		'Fredoka One',
		'Freehand',
		'Fresca',
		'Frijole',
		'Fruktur',
		'Fugaz One',
		'GFS Didot',
		'GFS Neohellenic',
		'Gabriela',
		'Gafata',
		'Galdeano',
		'Galindo',
		'Gentium Basic',
		'Gentium Book Basic',
		'Geo',
		'Georgia',
		'Geostar',
		'Geostar Fill',
		'Germania One',
		'Gilda Display',
		'Give You Glory',
		'Glass Antiqua',
		'Glegoo',
		'Gloria Hallelujah',
		'Goblin One',
		'Gochi Hand',
		'Gorditas',
		'Goudy Bookletter 1911',
		'Graduate',
		'Grand Hotel',
		'Gravitas One',
		'Great Vibes',
		'Griffy',
		'Gruppo',
		'Gudea',
		'Habibi',
		'Hammersmith One',
		'Hanalei',
		'Hanalei Fill',
		'Handlee',
		'Hanuman',
		'Happy Monkey',
		'Headland One',
		'Henny Penny',
		'Herr Von Muellerhoff',
		'Holtwood One SC',
		'Homemade Apple',
		'Homenaje',
		'IM Fell DW Pica',
		'IM Fell DW Pica SC',
		'IM Fell Double Pica',
		'IM Fell Double Pica SC',
		'IM Fell English',
		'IM Fell English SC',
		'IM Fell French Canon',
		'IM Fell French Canon SC',
		'IM Fell Great Primer',
		'IM Fell Great Primer SC',
		'Iceberg',
		'Iceland',
		'Imprima',
		'Inconsolata',
		'Inder',
		'Indie Flower',
		'Inika',
		'Irish Grover',
		'Istok Web',
		'Italiana',
		'Italianno',
		'Jacques Francois',
		'Jacques Francois Shadow',
		'Jim Nightshade',
		'Jockey One',
		'Jolly Lodger',
		'Josefin Sans',
		'Josefin Slab',
		'Joti One',
		'Judson',
		'Julee',
		'Julius Sans One',
		'Junge',
		'Jura',
		'Just Another Hand',
		'Just Me Again Down Here',
		'Kameron',
		'Karla',
		'Kaushan Script',
		'Kavoon',
		'Keania One',
		'Kelly Slab',
		'Kenia',
		'Khmer',
		'Kite One',
		'Knewave',
		'Kotta One',
		'Koulen',
		'Kranky',
		'Kreon',
		'Kristi',
		'Krona One',
		'La Belle Aurore',
		'Lancelot',
		'Lato',
		'League Script',
		'Leckerli One',
		'Ledger',
		'Lekton',
		'Lemon',
		'Libre Baskerville',
		'Life Savers',
		'Lilita One',
		'Lily Script One',
		'Limelight',
		'Linden Hill',
		'Lobster',
		'Lobster Two',
		'Londrina Outline',
		'Londrina Shadow',
		'Londrina Sketch',
		'Londrina Solid',
		'Lora',
		'Love Ya Like A Sister',
		'Loved by the King',
		'Lovers Quarrel',
		'Luckiest Guy',
		'Lusitana',
		'Lustria',
		'Macondo',
		'Macondo Swash Caps',
		'Magra',
		'Maiden Orange',
		'Mako',
		'Marcellus',
		'Marcellus SC',
		'Marck Script',
		'Margarine',
		'Marko One',
		'Marmelad',
		'Marvel',
		'Mate',
		'Mate SC',
		'Maven Pro',
		'McLaren',
		'Meddon',
		'MedievalSharp',
		'Medula One',
		'Megrim',
		'Meie Script',
		'Merienda',
		'Merienda One',
		'Merriweather',
		'Merriweather Sans',
		'Metal',
		'Metal Mania',
		'Metamorphous',
		'Metrophobic',
		'Michroma',
		'Milonga',
		'Miltonian',
		'Miltonian Tattoo',
		'Miniver',
		'Miss Fajardose',
		'Modern Antiqua',
		'Molengo',
		'Molle',
		'Monda',
		'Monofett',
		'Monoton',
		'Monsieur La Doulaise',
		'Montaga',
		'Montez',
		'Montserrat',
		'Montserrat Alternates',
		'Montserrat Subrayada',
		'Moul',
		'Moulpali',
		'Mountains of Christmas',
		'Mouse Memoirs',
		'Mr Bedfort',
		'Mr Dafoe',
		'Mr De Haviland',
		'Mrs Saint Delafield',
		'Mrs Sheppards',
		'Muli',
		'Mystery Quest',
		'Neucha',
		'Neuton',
		'New Rocker',
		'News Cycle',
		'Niconne',
		'Nixie One',
		'Nobile',
		'Nokora',
		'Norican',
		'Nosifer',
		'Nothing You Could Do',
		'Noticia Text',
		'Noto Sans',
		'Noto Serif',
		'Nova Cut',
		'Nova Flat',
		'Nova Mono',
		'Nova Oval',
		'Nova Round',
		'Nova Script',
		'Nova Slim',
		'Nova Square',
		'Numans',
		'Nunito',
		'Odor Mean Chey',
		'Offside',
		'Old Standard TT',
		'Oldenburg',
		'Oleo Script',
		'Oleo Script Swash Caps',
		'Open Sans',
		'Open Sans Condensed',
		'Oranienbaum',
		'Orbitron',
		'Oregano',
		'Orienta',
		'Original Surfer',
		'Oswald',
		'Over the Rainbow',
		'Overlock',
		'Overlock SC',
		'Ovo',
		'Oxygen',
		'Oxygen Mono',
		'PT Mono',
		'PT Sans',
		'PT Sans Caption',
		'PT Sans Narrow',
		'PT Serif',
		'PT Serif Caption',
		'Pacifico',
		'Paprika',
		'Parisienne',
		'Passero One',
		'Passion One',
		'Pathway Gothic One',
		'Patrick Hand',
		'Patrick Hand SC',
		'Patua One',
		'Paytone One',
		'Peralta',
		'Permanent Marker',
		'Petit Formal Script',
		'Petrona',
		'Philosopher',
		'Piedra',
		'Pinyon Script',
		'Pirata One',
		'Plaster',
		'Play',
		'Playball',
		'Playfair Display',
		'Playfair Display SC',
		'Podkova',
		'Poiret One',
		'Poller One',
		'Poly',
		'Pompiere',
		'Pontano Sans',
		'Port Lligat Sans',
		'Port Lligat Slab',
		'Prata',
		'Preahvihear',
		'Press Start 2P',
		'Princess Sofia',
		'Prociono',
		'Prosto One',
		'Puritan',
		'Purple Purse',
		'Quando',
		'Quantico',
		'Quattrocento',
		'Quattrocento Sans',
		'Questrial',
		'Quicksand',
		'Quintessential',
		'Qwigley',
		'Racing Sans One',
		'Radley',
		'Raleway',
		'Raleway Dots',
		'Rambla',
		'Rammetto One',
		'Ranchers',
		'Rancho',
		'Rationale',
		'Redressed',
		'Reenie Beanie',
		'Revalia',
		'Ribeye',
		'Ribeye Marrow',
		'Righteous',
		'Risque',
		'Roboto',
		'Roboto Condensed',
		'Roboto Slab',
		'Rochester',
		'Rock Salt',
		'Rokkitt',
		'Romanesco',
		'Ropa Sans',
		'Rosario',
		'Rosarivo',
		'Rouge Script',
		'Ruda',
		'Rufina',
		'Ruge Boogie',
		'Ruluko',
		'Rum Raisin',
		'Ruslan Display',
		'Russo One',
		'Ruthie',
		'Rye',
		'Sacramento',
		'Sail',
		'Salsa',
		'Sanchez',
		'Sancreek',
		'Sansita One',
		'Sarina',
		'Satisfy',
		'Scada',
		'Schoolbell',
		'Seaweed Script',
		'Sevillana',
		'Seymour One',
		'Shadows Into Light',
		'Shadows Into Light Two',
		'Shanti',
		'Share',
		'Share Tech',
		'Share Tech Mono',
		'Shojumaru',
		'Short Stack',
		'Siemreap',
		'Sigmar One',
		'Signika',
		'Signika Negative',
		'Simonetta',
		'Sintony',
		'Sirin Stencil',
		'Six Caps',
		'Skranji',
		'Slackey',
		'Smokum',
		'Smythe',
		'Sniglet',
		'Snippet',
		'Snowburst One',
		'Sofadi One',
		'Sofia',
		'Sonsie One',
		'Sorts Mill Goudy',
		'Source Code Pro',
		'Source Sans Pro',
		'Special Elite',
		'Spicy Rice',
		'Spinnaker',
		'Spirax',
		'Squada One',
		'Stalemate',
		'Stalinist One',
		'Stardos Stencil',
		'Stint Ultra Condensed',
		'Stint Ultra Expanded',
		'Stoke',
		'Strait',
		'Sue Ellen Francisco',
		'Sunshiney',
		'Supermercado One',
		'Suwannaphum',
		'Swanky and Moo Moo',
		'Syncopate',
		'Tangerine',
		'Taprom',
		'Tauri',
		'Telex',
		'Tenor Sans',
		'Text Me One',
		'The Girl Next Door',
		'Tienne',
		'Times New Roman',
		'Tinos',
		'Titan One',
		'Titillium Web',
		'Trade Winds',
		'Trocchi',
		'Trochut',
		'Trykker',
		'Tulpen One',
		'Ubuntu',
		'Ubuntu Condensed',
		'Ubuntu Mono',
		'Ultra',
		'Uncial Antiqua',
		'Underdog',
		'Unica One',
		'UnifrakturCook',
		'UnifrakturMaguntia',
		'Unkempt',
		'Unlock',
		'Unna',
		'VT323',
		'Vampiro One',
		'Varela',
		'Varela Round',
		'Vast Shadow',
		'Vibur',
		'Vidaloka',
		'Viga',
		'Voces',
		'Volkhov',
		'Vollkorn',
		'Voltaire',
		'Waiting for the Sunrise',
		'Wallpoet',
		'Walter Turncoat',
		'Warnes',
		'Wellfleet',
		'Wendy One',
		'Wire One',
		'Yanone Kaffeesatz',
		'Yellowtail',
		'Yeseva One',
		'Yesteryear',
		'Zeyada'	
	);
	return $fonts;
}

?>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:600,500,400' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/template_options.css" />
<script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
<script type="text/javascript" src="view/javascript/jquery/jquery.cookie.js"></script>
<script type="text/javascript">
$.fn.tabs = function() {
	var selector = this;
	
	this.each(function() {
		var obj = $(this); 
		
		$(obj.attr('href')).hide();
		
		$(obj).click(function() {
			$(selector).removeClass('selected');
			
			$(selector).each(function(i, element) {
				$($(element).attr('href')).hide();
			});
			
			$(this).addClass('selected');
			
			$($(this).attr('href')).show();
			
			return false;
		});
	});

	$(this).show();
	
	$(this).first().click();
};
</script>

<?php echo $column_left; ?>
<div id="content"><div class="container-fluid">
	<div class="page-header">
	    <h1>BeamStore主题选型</h1>
	    <ul class="breadcrumb">
		     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		      <?php } ?>
	    </ul>
	  </div>

	<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } elseif ($success) {  ?>
		<div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } ?>

<!-- Theme Options -->

<div class="set-size" id="theme-options">
	
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	
		<!-- MULTISTORE -->
		<div id="tb_store_select">
			<label class="inline">商城</label>
			<select name="d_store_id" id="d_store_id">
			<?php foreach ($stores as $store): ?>
				<option value="<?php echo 'index.php?route=module/beamstore&store_id=' . $store['store_id'] . '&token=' . $_GET['token']; ?>"<?php if($store_id == $store['store_id']) echo ' selected="selected"'; ?>><?php echo $store['name']; ?></option>
			<?php endforeach; ?>
			</select>
		</div>
					    
		<input type="hidden" name="store_id" value="<?php echo $store_id; ?>" />
					    
		<script type="text/javascript">
			$(document).ready(function (){
				$("#d_store_id").bind("change", function() {
					window.location = $(this).val();
				});
				
				$("#form input").keypress(function(event) {
				    if (event.which == 13) {
				        return false;
				    }
				});
				
				$(".button-add").click(function() {
					$(".add-skin").show();
					return false;
				});
			});
		</script>
		<!-- END MULTISTORE -->
		
		<!-- Unlimited theme skins -->
		<div class="content theme-skins">
			<div>
				<ul class="skins">
					<?php $liczba_skinow = 0; if(isset($skins)) { foreach($skins as $skin) { $liczba_skinow++; } } ?>
					<?php $aktywny_skin = false; if($liczba_skinow > 0) { ?>
					<li><p>当前皮肤: <br><span><?php echo $active_skin; ?></span></p></li>
					<li>
						<select name="skin">
							<?php foreach($skins as $skin) { ?>
							<option<?php if($skin == $active_skin_edit) { $aktywny_skin = true; echo ' selected="selected"'; } ?> value="<?php echo $skin; ?>"><?php echo $skin; ?></option>
							<?php } ?>
						</select>
						<input type="hidden" name="save_skin" value="<?php echo $active_skin_edit; ?>" />
					</li>
					<li><input type="submit" name="button-active" class="button-active"></li>
					<?php } ?>
					<li><a onclick="#" class="button-add"><span>add</span></a><div class="add-skin"><input type="text" name="add-skin-name" class="add-skin-name" value=""><input type="submit" name="add-skin" value="Add skin" class="button-add-skin"></div></li>
					<?php if($liczba_skinow > 0) { ?>
					<li><input type="submit" name="button-edit" class="button-edit"></li>
					<li><input type="submit" name="button-delete" class="button-delete" onclick="return confirm('Are you sure you want to delete?')"></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		
		<?php if($liczba_skinow > 0 && ($active_skin != '' || $aktywny_skin == true)) { ?>
		<!-- Content -->
		
		<div class="content">
		
			<div>
				<!-- Tabs -->
				
				<div class="bg-tabs">
				
					<!-- General, Design, Footer TABS -->
					
					<div id="tabs" class="htabs main-tabs">
					
						<a href="#tab_general" id="general"><span>基本设置</span></a>
						<a href="#tab_design" id="design"><span>页面设计</span></a>
						<a href="#tab_footer" id="tfooter"><span>页脚设计</span></a>
						<a href="#tab_custom_block" id="tcustomblock"><span>自定义模块</span></a>
						<a href="#tab_custom_code" id="tcustomcode"><span>自定义代码</span></a>
						<a href="#tab_payment" id="tpayment"><span>支付</span></a>
						<a href="#tab_widgets" id="twidgets"><span>装饰</span></a>
						<a href="#tab_compressor_code" id="tcompressorcode"><span>压缩代码</span></a>
						<a href="#tab_install_data" id="tinstalldata"><span>安装数据</span></a>
					
					</div>
					
					<!-- End General, Design Footer Tabs -->
					
					<!-- /////////////////// General -->
					
					<div id="tab_general" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_general" class="htabs tabs-design">
						
							<a href="#tab_layout" id="tlayout"><span>Layout</span></a>
							<a href="#tab_product" id="tproduct"><span>Product</span></a>
							<a href="#tab_category" id="tcategory"><span>Category</span></a>
							<a href="#tab_header" id="theader"><span>Header</span></a>
							<a href="#tab_translations" id="ttranslations"><span>Translations</span></a>
						
						</div>
						
						<!-- **************** Tab GENERAL OPTIONS -->
						
						<div id="tab_layout" class="tab-content">
							<h4>响应式布局</h4>
							<div class="input with-status">
								<p>响应式:</p>
								<?php if($responsive_design == 0 && $responsive_design != '') { echo '<div class="status status-off" title="0" rel="responsive_design"></div>'; } else { echo '<div class="status status-on" title="1" rel="responsive_design"></div>'; } ?>
								<input name="responsive_design" value="<?php echo $responsive_design; ?>" id="responsive_design" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<h4 style="padding-top:30px">页面宽度</h4>
							<!-- Input -->
							<div class="input">
								<p>页面宽度:</p>
								<select name="page_width" class="select-page-width">
									<option value="1" <?php if($page_width == 1) { echo 'selected="selected"'; } ?>>宽屏 (1220px)</option>
									<option value="3" <?php if($page_width == 3) { echo 'selected="selected"'; } ?>>标准 (980px)</option>
									<option value="2" <?php if($page_width == 2) { echo 'selected="selected"'; } ?>>全屏</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input page-width" <?php if($page_width != 2) { echo 'style="display:none"'; } ?>>
								<p>最大宽度:</p>
								<input type="text" name="max_width" value="<?php echo $max_width; ?>" style="margin-right:10px;width:60px">
								<div style="float:left;width:auto;padding-top:7px"><span style="color:#808080;font-size:11px">px</span></div>
								<div class="clear"></div>
							</div>
							
							<h4 style="padding-top:30px">布局类型</h4>
							<!-- Input -->
							<div class="input">
								<p>主体:</p>
								<select name="main_layout">
									<option value="1" <?php if($main_layout == 1) { echo 'selected="selected"'; } ?>>全屏</option>
									<option value="2" <?php if($main_layout == 2) { echo 'selected="selected"'; } ?>>固定</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>顶部导航条:</p>
								<select name="top_bar_layout">
									<option value="1" <?php if($top_bar_layout == 1) { echo 'selected="selected"'; } ?>>全屏</option>
									<option value="2" <?php if($top_bar_layout == 2) { echo 'selected="selected"'; } ?>>固定</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>页首:</p>
								<select name="header_layout">
									<option value="1" <?php if($header_layout == 1) { echo 'selected="selected"'; } ?>>全屏</option>
									<option value="2" <?php if($header_layout == 2) { echo 'selected="selected"'; } ?>>固定</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>幻灯片:</p>
								<select name="slideshow_layout">
									<option value="1" <?php if($slideshow_layout == 1) { echo 'selected="selected"'; } ?>>全屏</option>
									<option value="2" <?php if($slideshow_layout == 2) { echo 'selected="selected"'; } ?>>固定</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>面包秀导航:</p>
								<select name="breadcrumb_layout">
									<option value="1" <?php if($breadcrumb_layout == 1) { echo 'selected="selected"'; } ?>>全屏</option>
									<option value="2" <?php if($breadcrumb_layout == 2) { echo 'selected="selected"'; } ?>>固定</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>内容:</p>
								<select name="content_layout">
									<option value="1" <?php if($content_layout == 1) { echo 'selected="selected"'; } ?>>全屏</option>
									<option value="2" <?php if($content_layout == 2) { echo 'selected="selected"'; } ?>>固定</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>自定义页脚:</p>
								<select name="custom_footer_layout">
									<option value="1" <?php if($custom_footer_layout == 1) { echo 'selected="selected"'; } ?>>全屏</option>
									<option value="2" <?php if($custom_footer_layout == 2) { echo 'selected="selected"'; } ?>>固定</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>页脚:</p>
								<select name="footer_layout">
									<option value="1" <?php if($footer_layout == 1) { echo 'selected="selected"'; } ?>>全屏</option>
									<option value="2" <?php if($footer_layout == 2) { echo 'selected="selected"'; } ?>>固定</option>
								</select>
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- Product -->
						<div id="tab_product" class="tab-content">
							<h4>Sale badge</h4>
							<div class="input with-status">
								<p style="width:270px">Display Sale:</p>
								<?php if($display_text_sale == 0 && $display_text_sale != '') { echo '<div class="status status-off" title="0" rel="display_text_sale"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_text_sale"></div>'; } ?>
								<input name="display_text_sale" value="<?php echo $display_text_sale; ?>" id="display_text_sale" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">Type Sale:</p>
								<select name="type_sale">
									<option value="0" <?php if($type_sale =='0'){echo ' selected="selected"';} ?>>Text</option>
									<option value="1" <?php if($type_sale =='1'){echo ' selected="selected"';} ?>>%</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">Text Sale:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="sale_text[<?php echo $language_id; ?>]" <?php if(isset($sale_text[$language_id])) { echo 'value="'.$sale_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<h4 style="margin-top: 20px">商品页</h4>
							<div class="input">
								<p style="width:270px">商品图片放大:</p>
								<select name="product_image_zoom">
									<option value="0" <?php if($product_image_zoom =='0'){echo ' selected="selected"';} ?>>Cloud Zoom</option>
									<option value="1" <?php if($product_image_zoom =='1'){echo ' selected="selected"';} ?>>Inner Cloud Zoom</option>
									<option value="2" <?php if($product_image_zoom =='2'){echo ' selected="selected"';} ?>>默认</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">商品图片尺寸:</p>
								<select name="product_image_size">
									<option value="1" <?php if($product_image_size =='1'){echo ' selected="selected"';} ?>>小</option>
									<option value="2" <?php if($product_image_size =='2' || $product_image_size < 1){echo ' selected="selected"';} ?>>中</option>
									<option value="3" <?php if($product_image_size =='3'){echo ' selected="selected"';} ?>>大</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">附加图片位置:</p>
								<select name="position_image_additional">
									<option value="1" <?php if($position_image_additional =='1'){echo ' selected="selected"';} ?>>底部</option>
									<option value="2" <?php if($position_image_additional =='2'){echo ' selected="selected"';} ?>>左</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">商品分享:</p>
								<?php if($product_social_share == 0 && $product_social_share != '') { echo '<div class="status status-off" title="0" rel="product_social_share"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_social_share"></div>'; } ?>
								<input name="product_social_share" value="<?php echo $product_social_share; ?>" id="product_social_share" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<h4 style="margin-top: 20px">商品栏</h4>
							<div class="input">
								<p style="width:270px">商品栏编号:</p>
								<select name="product_per_pow">
									<option value="3"<?php if($product_per_pow =='3'){echo ' selected="selected"';} ?>>3</option>
									<option value="4"<?php if($product_per_pow =='4' || $product_per_pow < 3){echo ' selected="selected"';} ?>>4</option>
									<option value="5"<?php if($product_per_pow =='5'){echo ' selected="selected"';} ?>>5</option>
									<option value="6"<?php if($product_per_pow =='6'){echo ' selected="selected"';} ?>>6</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">商品图片效果:</p>
								<select name="product_image_effect">
									<option value="0"<?php if($product_image_effect =='0'){echo ' selected="selected"';} ?>>无</option>
									<option value="1"<?php if($product_image_effect =='1'){echo ' selected="selected"';} ?>>交换</option>
									<option value="2"<?php if($product_image_effect =='2'){echo ' selected="selected"';} ?>>放大</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">快速查看:</p>
								<?php if($quick_view == 0) { echo '<div class="status status-off" title="0" rel="quick_view"></div>'; } else { echo '<div class="status status-on" title="1" rel="quick_view"></div>'; } ?>
								<input name="quick_view" value="<?php echo $quick_view; ?>" id="quick_view" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:250px">在商品栏中显示元素:</p>
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 鼠标经过时</p>
								<?php if($hover_product == 0 && $hover_product != '') { echo '<div class="status status-off" title="0" rel="hover_product"></div>'; } else { echo '<div class="status status-on" title="1" rel="hover_product"></div>'; } ?>
								<input name="hover_product" value="<?php echo $hover_product; ?>" id="hover_product" type="hidden" />
								<div class="clear"></div>
							</div>

							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 评价</p>
								<?php if($display_rating == 0 && $display_rating != '') { echo '<div class="status status-off" title="0" rel="display_rating"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_rating"></div>'; } ?>
								<input name="display_rating" value="<?php echo $display_rating; ?>" id="display_rating" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 加入比较</p>
								<?php if($display_add_to_compare == 0 && $display_add_to_compare != '') { echo '<div class="status status-off" title="0" rel="display_add_to_compare"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_compare"></div>'; } ?>
								<input name="display_add_to_compare" value="<?php echo $display_add_to_compare; ?>" id="display_add_to_compare" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 加入收藏</p>
								<?php if($display_add_to_wishlist == 0 && $display_add_to_wishlist != '') { echo '<div class="status status-off" title="0" rel="display_add_to_wishlist"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_wishlist"></div>'; } ?>
								<input name="display_add_to_wishlist" value="<?php echo $display_add_to_wishlist; ?>" id="display_add_to_wishlist" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;-加入购物车</p>
								<?php if($display_add_to_cart == 0 && $display_add_to_cart != '') { echo '<div class="status status-off" title="0" rel="display_add_to_cart"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_cart"></div>'; } ?>
								<input name="display_add_to_cart" value="<?php echo $display_add_to_cart; ?>" id="display_add_to_cart" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p>商品滚动:</p>
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 最近商品</p>
								<?php if($product_scroll_latest == 0 && $product_scroll_latest != '') { echo '<div class="status status-off" title="0" rel="product_scroll_latest"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_latest"></div>'; } ?>
								<input name="product_scroll_latest" value="<?php echo $product_scroll_latest; ?>" id="product_scroll_latest" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 特色商品</p>
								<?php if($product_scroll_featured == 0 && $product_scroll_featured != '') { echo '<div class="status status-off" title="0" rel="product_scroll_featured"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_featured"></div>'; } ?>
								<input name="product_scroll_featured" value="<?php echo $product_scroll_featured; ?>" id="product_scroll_featured" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 畅销商品</p>
								<?php if($product_scroll_bestsellers == 0 && $product_scroll_bestsellers != '') { echo '<div class="status status-off" title="0" rel="product_scroll_bestsellers"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_bestsellers"></div>'; } ?>
								<input name="product_scroll_bestsellers" value="<?php echo $product_scroll_bestsellers; ?>" id="product_scroll_bestsellers" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 特价商品</p>
								<?php if($product_scroll_specials == 0 && $product_scroll_specials != '') { echo '<div class="status status-off" title="0" rel="product_scroll_specials"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_specials"></div>'; } ?>
								<input name="product_scroll_specials" value="<?php echo $product_scroll_specials; ?>" id="product_scroll_specials" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- 相关商品</p>
								<?php if($product_scroll_related == 0 && $product_scroll_related != '') { echo '<div class="status status-off" title="0" rel="product_scroll_related"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_related"></div>'; } ?>
								<input name="product_scroll_related" value="<?php echo $product_scroll_related; ?>" id="product_scroll_related" type="hidden" />
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- Category -->
						<div id="tab_category" class="tab-content">
							<h4>分类页</h4>
							<!-- Input -->
							<div class="input">
								<p style="width:270px">分类栏编号:</p>
								<select name="product_per_pow2">
									<option value="2"<?php if($product_per_pow2 =='2'){echo ' selected="selected"';} ?>>2</option>
									<option value="3"<?php if($product_per_pow2 =='3'){echo ' selected="selected"';} ?>>3</option>
									<option value="4"<?php if($product_per_pow2 =='4' || $product_per_pow2 < 2){echo ' selected="selected"';} ?>>4</option>
									<option value="5"<?php if($product_per_pow2 =='5'){echo ' selected="selected"';} ?>>5</option>
									<option value="6"<?php if($product_per_pow2 =='6'){echo ' selected="selected"';} ?>>6</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p style="width:270px">默认 列/行:</p>
								<select name="default_list_grid">
							  		<option value="0" <?php if($default_list_grid =='0'){echo ' selected="selected"';} ?>>列</option>
							 		<option value="1" <?php if($default_list_grid =='1'){echo ' selected="selected"';} ?>>行</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p style="width:270px">完善搜索风格:</p>
								<select name="refine_search_style">
									<option value="0" <?php if($refine_search_style =='0'){echo ' selected="selected"';} ?>>图片</option>
									<option value="1" <?php if($refine_search_style =='1'){echo ' selected="selected"';} ?>>精文本</option>
									<option value="2" <?php if($refine_search_style =='2'){echo ' selected="selected"';} ?>>禁用</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">Refine search number per row:</p>
								<select name="refine_search_number">
									<option value="2"<?php if($refine_search_number =='2'){echo ' selected="selected"';} ?>>2</option>
									<option value="3"<?php if($refine_search_number =='3'|| $refine_search_number < 2){echo ' selected="selected"';} ?>>3</option>
									<option value="4"<?php if($refine_search_number =='4'){echo ' selected="selected"';} ?>>4</option>
									<option value="5"<?php if($refine_search_number =='5'){echo ' selected="selected"';} ?>>5</option>
									<option value="6"<?php if($refine_search_number =='6'){echo ' selected="selected"';} ?>>6</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p style="width:270px">Refine search image size:</p>
								<input type="text" name="refine_image_width" style="width:60px" value="<?php echo $refine_image_width; ?>" />
								<div style="float:left;width:auto;padding-right:15px;position:relative;margin-left:-5px;padding-top:5px"> x </div>
								<input type="text" name="refine_image_height" style="width:60px" value="<?php echo $refine_image_height; ?>" />
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- Header -->
						<div id="tab_header" class="tab-content">
							<h4>设置</h4>
							
							<div class="input with-status">
								<p style="width:270px">快速自动搜索:</p>
								<?php if($quick_search_autosuggest == 0 && $quick_search_autosuggest != '') { echo '<div class="status status-off" title="0" rel="quick_search_autosuggest"></div>'; } else { echo '<div class="status status-on" title="1" rel="quick_search_autosuggest"></div>'; } ?>
								<input name="quick_search_autosuggest" value="<?php echo $quick_search_autosuggest; ?>" id="quick_search_autosuggest" type="hidden" />
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- Translations -->
						<div id="tab_translations" class="tab-content">
							<h4>翻译</h4>
							<div class="input">
								<p style="width:200px">继续购物:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="continue_shopping_text[<?php echo $language_id; ?>]" <?php if(isset($continue_shopping_text[$language_id])) { echo 'value="'.$continue_shopping_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">结账:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="checkout_text[<?php echo $language_id; ?>]" <?php if(isset($checkout_text[$language_id])) { echo 'value="'.$checkout_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">确认:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="confirmation_text[<?php echo $language_id; ?>]" <?php if(isset($confirmation_text[$language_id])) { echo 'value="'.$confirmation_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">顶部导航条标语:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="welcome_text[<?php echo $language_id; ?>]" <?php if(isset($welcome_text[$language_id])) { echo 'value="'.$welcome_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">购物车:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="shopping_cart_text[<?php echo $language_id; ?>]" <?php if(isset($shopping_cart_text[$language_id])) { echo 'value="'.$shopping_cart_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">主页:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="home_text[<?php echo $language_id; ?>]" <?php if(isset($home_text[$language_id])) { echo 'value="'.$home_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">加入比较:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="add_to_compare_text[<?php echo $language_id; ?>]" <?php if(isset($add_to_compare_text[$language_id])) { echo 'value="'.$add_to_compare_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">加入收藏:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="add_to_wishlist_text[<?php echo $language_id; ?>]" <?php if(isset($add_to_wishlist_text[$language_id])) { echo 'value="'.$add_to_wishlist_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">详情:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="more_details_text[<?php echo $language_id; ?>]" <?php if(isset($more_details_text[$language_id])) { echo 'value="'.$more_details_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">快速浏览:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="quickview_text[<?php echo $language_id; ?>]" <?php if(isset($quickview_text[$language_id])) { echo 'value="'.$quickview_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- **************** END TAB GENERAL OPTIONS -->
								
					</div>
					
					<!-- ////////////////////// End General -->
					
					<!-- Design -->
					
					<div id="tab_design" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_design" class="htabs tabs-design">
						
							<a href="#tab_font" id="tfont"><span>Font</span></a>
							<a href="#tab_colors" id="tcolors"><span>Colors</span></a>
							<a href="#tab_backgrounds" id="tbackgrounds"><span>Backgrounds</span></a>
						
						</div>
						
						<!-- Font, colors, background -->
						
						<!-- Font -->
					
						<div id="tab_font" class="tab-content">
						
							<!-- Status -->
							
							<?php if($font_status == 1) { echo '<div class="status status-on" title="1" rel="font_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="font_status"></div>'; } ?>
							
							<input name="font_status" value="<?php echo $font_status; ?>" id="font_status" type="hidden" />
							
							<!-- Title -->
							
							<h4>字体设置</h4>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Body字体:</p>
								<select name="body_font">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($body_font == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

								</select>
								<select name="body_font_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($body_font_weight==$x || ($x == 3 && $body_font_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<select name="body_font_px" style="width:80px;margin-right:25px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($body_font_px==$x || ($x == 13 && $body_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:60px">小</p>
								<select name="body_font_smaller_px" style="width:80px;margin-right:35px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($body_font_smaller_px==$x || ($x == 12 && $body_font_smaller_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>分类栏:</p>
								<select name="categories_bar">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($categories_bar == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
																
								</select>
								<select name="categories_bar_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($categories_bar_weight==$x || ($x == 3 && $categories_bar_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<select name="categories_bar_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($categories_bar_px==$x || ($x == 18 && $categories_bar_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>价格:</p>
								<select name="custom_price">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($custom_price == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
								
								</select>
								<select name="custom_price_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($custom_price_weight==$x || ($x == 4 && $custom_price_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<p style="width:54px">大</p>
								<select name="custom_price_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px==$x || ($x == 36 && $custom_price_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:81px">中</p>
								<select name="custom_price_px_medium" style="width:80px;margin-right:0px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_medium==$x || ($x == 20 && $custom_price_px_medium < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								
								<div class="clear" style="height:15px"></div>
								
								<div style="float:left;width:410px;height:10px"></div>
								
								<p style="width:54px">小</p>
								<select name="custom_price_px_small" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_small==$x || ($x == 16 && $custom_price_px_small < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:81px">Old price</p>
								<select name="custom_price_px_old_price" style="width:80px;margin-right:0px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_old_price==$x || ($x == 13 && $custom_price_px_old_price < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
								
							<!-- Input -->
							
							<div class="input">
							
								<p>头条:</p>
								<select name="headlines">

								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($headlines == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
						
								</select>
								<select name="headlines_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($headlines_weight==$x || ($x == 3 && $headlines_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								
								<select name="headlines_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($headlines_px==$x || ($x == 22 && $headlines_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>页脚标题:</p>
								<select name="footer_headlines">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($footer_headlines == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
																	
								</select>
								<select name="footer_headlines_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($footer_headlines_weight==$x || ($x == 3 && $footer_headlines_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<select name="footer_headlines_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($footer_headlines_px==$x || ($x == 20 && $footer_headlines_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>页面名称:</p>
								<select name="page_name">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($page_name == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

								</select>
								<select name="page_name_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($page_name_weight==$x || ($x == 6 && $page_name_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<select name="page_name_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($page_name_px==$x || ($x == 30 && $page_name_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
							
								<p>按钮:</p>
								<select name="button_font">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($button_font == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

							</select>
							<select name="button_font_weight" style="width:60px;margin-right:20px">
							
								<?php for( $x = 3; $x <= 6; $x++ ) { ?>
							  <option value="<?php echo $x; ?>" <?php if($button_font_weight==$x || ($x == 4 && $button_font_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
								<?php } ?>
							
							</select>
								<select name="button_font_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($button_font_px==$x || ($x == 14 && $button_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
													
						</div>
					
						<!-- End Font -->
						
						<!-- Colors -->
						
						<div id="tab_colors" class="tab-content">
													
							<!-- Status -->
							
							<?php if($colors_status == 1) { echo '<div class="status status-on" title="1" rel="colors_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="colors_status"></div>'; } ?>
							
							<input name="colors_status" value="<?php echo $colors_status; ?>" id="colors_status" type="hidden" />
							
							<!-- Colros body -->
							<div class="colors_left" style="padding-top: 0px">
								<h4>Body</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Body 文本:</p>
									<div><input type="text" value="<?php echo $body_font_text; ?>" id="body_font_text" name="body_font_text" <?php if($body_font_text != '') { echo 'style="border-right: 20px solid '.$body_font_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Body 链接:</p>
									<div><input type="text" value="<?php echo $body_font_links; ?>" id="body_font_links" name="body_font_links" <?php if($body_font_links != '') { echo 'style="border-right: 20px solid '.$body_font_links.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Body 鼠标经过时链接:</p>
									<div><input type="text" value="<?php echo $body_font_links_hover; ?>" id="body_font_links_hover" name="body_font_links_hover" <?php if($body_font_links_hover != '') { echo 'style="border-right: 20px solid '.$body_font_links_hover.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>价格:</p>
									<div><input type="text" value="<?php echo $body_price_text; ?>" id="body_price_text" name="body_price_text" <?php if($body_price_text != '') { echo 'style="border-right: 20px solid '.$body_price_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>新价格:</p>
									<div><input type="text" value="<?php echo $body_price_new_text; ?>" id="body_price_new_text" name="body_price_new_text" <?php if($body_price_new_text != '') { echo 'style="border-right: 20px solid '.$body_price_new_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>旧价格:</p>
									<div><input type="text" value="<?php echo $body_price_old_text; ?>" id="body_price_old_text" name="body_price_old_text" <?php if($body_price_old_text != '') { echo 'style="border-right: 20px solid '.$body_price_old_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>背景色:</p>
									<div><input type="text" value="<?php echo $body_background_color; ?>" id="body_background_color" name="body_background_color" <?php if($body_background_color != '') { echo 'style="border-right: 20px solid '.$body_background_color.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Body -->
							
							<!-- Colors Header -->
							<div class="colors_left">
								<h4>输入域</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>输入域边框颜色:</p>
									<div><input type="text" value="<?php echo $input_border_color; ?>" id="input_border_color" name="input_border_color" <?php if($input_border_color != '') { echo 'style="border-right: 20px solid '.$input_border_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>输入域焦点颜色:</p>
									<div><input type="text" value="<?php echo $input_focus_border_color; ?>" id="input_focus_border_color" name="input_focus_border_color" <?php if($input_focus_border_color != '') { echo 'style="border-right: 20px solid '.$input_focus_border_color.'"'; } ?> /></div>
								</div>
							</div>
							<!-- End Colors Body -->
							
							<!-- Colors Header -->
							<div class="colors_left">
								<h4>页首</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>背景:</p>
									<div><input type="text" value="<?php echo $header_background_color; ?>" id="header_background_color" name="header_background_color" <?php if($header_background_color != '') { echo 'style="border-right: 20px solid '.$header_background_color.'"'; } ?> /></div>
								</div>
							</div>
							<!-- End Colors Top bar -->
							
							
							<!-- Colros top bar -->
							<div class="colors_left">
								<h4>头部导航条</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>文本:</p>
									<div><input type="text" value="<?php echo $top_bar_text; ?>" id="top_bar_text" name="top_bar_text" <?php if($top_bar_text != '') { echo 'style="border-right: 20px solid '.$top_bar_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>背景:</p>
									<div><input type="text" value="<?php echo $top_bar_background_color; ?>" id="top_bar_background_color" name="top_bar_background_color" <?php if($top_bar_background_color != '') { echo 'style="border-right: 20px solid '.$top_bar_background_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>边框:</p>
									<div><input type="text" value="<?php echo $top_bar_border_color; ?>" id="top_bar_border_color" name="top_bar_border_color" <?php if($top_bar_border_color != '') { echo 'style="border-right: 20px solid '.$top_bar_border_color.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Top bar -->
							
							<!-- Colros top bar -->
							<div class="colors_left">
								<h4>Top</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>头部背景:</p>
									<div><input type="text" value="<?php echo $top_cart_arrow_background_gradient_top; ?>" id="top_cart_arrow_background_gradient_top" name="top_cart_arrow_background_gradient_top" <?php if($top_cart_arrow_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$top_cart_arrow_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>底部背景:</p>
									<div><input type="text" value="<?php echo $top_cart_arrow_background_gradient_bottom; ?>" id="top_cart_arrow_background_gradient_bottom" name="top_cart_arrow_background_gradient_bottom" <?php if($top_cart_arrow_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$top_cart_arrow_background_gradient_bottom.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>文本:</p>
									<div><input type="text" value="<?php echo $top_cart_text_color; ?>" id="top_cart_text_color" name="top_cart_text_color" <?php if($top_cart_text_color != '') { echo 'style="border-right: 20px solid '.$top_cart_text_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>图标:</p>
									<div><input type="text" value="<?php echo $top_cart_icon_color; ?>" id="top_cart_icon_color" name="top_cart_icon_color" <?php if($top_cart_icon_color != '') { echo 'style="border-right: 20px solid '.$top_cart_icon_color.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Top bar -->
							
							<!-- Colors Menu -->
							<div class="colors_left">
								<h4>菜单</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>链接:</p>
									<div><input type="text" value="<?php echo $menu_main_links; ?>" id="menu_main_links" name="menu_main_links" <?php if($menu_main_links != '') { echo 'style="border-right: 20px solid '.$menu_main_links.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>头部背景:</p>
									<div><input type="text" value="<?php echo $menu_background_gradient_top; ?>" id="menu_background_gradient_top" name="menu_background_gradient_top" <?php if($menu_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$menu_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>底部背景:</p>
									<div><input type="text" value="<?php echo $menu_background_gradient_bottom; ?>" id="menu_background_gradient_bottom" name="menu_background_gradient_bottom" <?php if($menu_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$menu_background_gradient_bottom.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>鼠标经过时背景:</p>
									<div><input type="text" value="<?php echo $menu_hover_background_color; ?>" id="menu_hover_background_color" name="menu_hover_background_color" <?php if($menu_hover_background_color != '') { echo 'style="border-right: 20px solid '.$menu_hover_background_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>主页图标颜色:</p>
									<div><input type="text" value="<?php echo $menu_icon_home_color; ?>" id="menu_icon_home_color" name="menu_icon_home_color" <?php if($menu_icon_home_color != '') { echo 'style="border-right: 20px solid '.$menu_icon_home_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>主页图标顶部背景:</p>
									<div><input type="text" value="<?php echo $menu_icon_home_background_top_color; ?>" id="menu_icon_home_background_top_color" name="menu_icon_home_background_top_color" <?php if($menu_icon_home_background_top_color != '') { echo 'style="border-right: 20px solid '.$menu_icon_home_background_top_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>主页图标底部背景:</p>
									<div><input type="text" value="<?php echo $menu_icon_home_background_bottom_color; ?>" id="menu_icon_home_background_bottom_color" name="menu_icon_home_background_bottom_color" <?php if($menu_icon_home_background_bottom_color != '') { echo 'style="border-right: 20px solid '.$menu_icon_home_background_bottom_color.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Menu -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>面包屑导航</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>链接颜色:</p>
									<div><input type="text" value="<?php echo $breadcrumb_link_color; ?>" id="breadcrumb_link_color" name="breadcrumb_link_color" <?php if($breadcrumb_link_color != '') { echo 'style="border-right: 20px solid '.$breadcrumb_link_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>当前链接颜色:</p>
									<div><input type="text" value="<?php echo $breadcrumb_link_active_color; ?>" id="breadcrumb_link_active_color" name="breadcrumb_link_active_color" <?php if($breadcrumb_link_active_color != '') { echo 'style="border-right: 20px solid '.$breadcrumb_link_active_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>页面名称颜色:</p>
									<div><input type="text" value="<?php echo $breadcrumb_page_name_color; ?>" id="breadcrumb_page_name_color" name="breadcrumb_page_name_color" <?php if($breadcrumb_page_name_color != '') { echo 'style="border-right: 20px solid '.$breadcrumb_page_name_color.'"'; } ?> /></div>
								</div>
								
							</div>
														
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>滑块</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Bullet background color:</p>
									<div><input type="text" value="<?php echo $slider_bullet_background_color; ?>" id="slider_bullet_background_color" name="slider_bullet_background_color" <?php if($slider_bullet_background_color != '') { echo 'style="border-right: 20px solid '.$slider_bullet_background_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Bullet active background color:</p>
									<div><input type="text" value="<?php echo $slider_bullet_active_background_color; ?>" id="slider_bullet_active_background_color" name="slider_bullet_active_background_color" <?php if($slider_bullet_active_background_color != '') { echo 'style="border-right: 20px solid '.$slider_bullet_active_background_color.'"'; } ?> /></div>
								</div>
							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Sale badges</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Color text:</p>
									<div><input type="text" value="<?php echo $sale_color_text; ?>" id="sale_color_text" name="sale_color_text" <?php if($sale_color_text != '') { echo 'style="border-right: 20px solid '.$sale_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $sale_background_gradient_top; ?>" id="sale_background_gradient_top" name="sale_background_gradient_top" <?php if($sale_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$sale_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $sale_background_gradient_bottom; ?>" id="sale_background_gradient_bottom" name="sale_background_gradient_bottom" <?php if($sale_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$sale_background_gradient_bottom.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Ratings icon</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $ratings_background_gradient_top; ?>" id="ratings_background_gradient_top" name="ratings_background_gradient_top" <?php if($ratings_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$ratings_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $ratings_background_gradient_bottom; ?>" id="ratings_background_gradient_bottom" name="ratings_background_gradient_bottom" <?php if($ratings_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$ratings_background_gradient_bottom.'"'; } ?> /></div>
								</div>
								
								<div class="color_input">
									<p>Active background gradient top:</p>
									<div><input type="text" value="<?php echo $ratings_active_background_gradient_top; ?>" id="ratings_active_background_gradient_top" name="ratings_active_background_gradient_top" <?php if($ratings_active_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$ratings_active_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<div class="color_input">
									<p>Active background gradient bottom:</p>
									<div><input type="text" value="<?php echo $ratings_active_background_gradient_bottom; ?>" id="ratings_active_background_gradient_bottom" name="ratings_active_background_gradient_bottom" <?php if($ratings_active_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$ratings_active_background_gradient_bottom.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Button</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Color text:</p>
									<div><input type="text" value="<?php echo $buttons_color_text; ?>" id="buttons_color_text" name="buttons_color_text" <?php if($buttons_color_text != '') { echo 'style="border-right: 20px solid '.$buttons_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $buttons_background_gradient_top; ?>" id="buttons_background_gradient_top" name="buttons_background_gradient_top" <?php if($buttons_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$buttons_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $buttons_background_gradient_bottom; ?>" id="buttons_background_gradient_bottom" name="buttons_background_gradient_bottom" <?php if($buttons_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$buttons_background_gradient_bottom.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Second Button</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Color text:</p>
									<div><input type="text" value="<?php echo $second_buttons_color_text; ?>" id="second_buttons_color_text" name="second_buttons_color_text" <?php if($second_buttons_color_text != '') { echo 'style="border-right: 20px solid '.$second_buttons_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $second_buttons_background_gradient_top; ?>" id="second_buttons_background_gradient_top" name="second_buttons_background_gradient_top" <?php if($second_buttons_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$second_buttons_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $second_buttons_background_gradient_bottom; ?>" id="second_buttons_background_gradient_bottom" name="second_buttons_background_gradient_bottom" <?php if($second_buttons_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$second_buttons_background_gradient_bottom.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Carousel and slider button</h4>

								<!-- Input -->
								<div class="color_input">
									<p>Arrow color:</p>
									<div><input type="text" value="<?php echo $carousel_arrow_color; ?>" id="carousel_arrow_color" name="carousel_arrow_color" <?php if($carousel_arrow_color != '') { echo 'style="border-right: 20px solid '.$carousel_arrow_color.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>CustomFooter</h4>

								<!-- Input -->
								<div class="color_input">
									<p>Text color:</p>
									<div><input type="text" value="<?php echo $customfooter_color_text; ?>" id="customfooter_color_text" name="customfooter_color_text" <?php if($customfooter_color_text != '') { echo 'style="border-right: 20px solid '.$customfooter_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Heading color:</p>
									<div><input type="text" value="<?php echo $customfooter_color_heading; ?>" id="customfooter_color_heading" name="customfooter_color_heading" <?php if($customfooter_color_heading != '') { echo 'style="border-right: 20px solid '.$customfooter_color_heading.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Icon contact us color:</p>
									<div><input type="text" value="<?php echo $customfooter_color_icon_contact_us; ?>" id="customfooter_color_icon_contact_us" name="customfooter_color_icon_contact_us" <?php if($customfooter_color_icon_contact_us != '') { echo 'style="border-right: 20px solid '.$customfooter_color_icon_contact_us.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Border color:</p>
									<div><input type="text" value="<?php echo $customfooter_border_color; ?>" id="customfooter_border_color" name="customfooter_border_color" <?php if($customfooter_border_color != '') { echo 'style="border-right: 20px solid '.$customfooter_border_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background color:</p>
									<div><input type="text" value="<?php echo $customfooter_background_color; ?>" id="customfooter_background_color" name="customfooter_background_color" <?php if($customfooter_background_color != '') { echo 'style="border-right: 20px solid '.$customfooter_background_color.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Footer</h4>

								<!-- Input -->
								<div class="color_input">
									<p>Text color:</p>
									<div><input type="text" value="<?php echo $footer_color_text; ?>" id="footer_color_text" name="footer_color_text" <?php if($footer_color_text != '') { echo 'style="border-right: 20px solid '.$footer_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Heading color:</p>
									<div><input type="text" value="<?php echo $footer_color_heading; ?>" id="footer_color_heading" name="footer_color_heading" <?php if($footer_color_heading != '') { echo 'style="border-right: 20px solid '.$footer_color_heading.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Bullets color:</p>
									<div><input type="text" value="<?php echo $footer_color_bullets; ?>" id="footer_color_bullets" name="footer_color_bullets" <?php if($footer_color_bullets != '') { echo 'style="border-right: 20px solid '.$footer_color_bullets.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Border color:</p>
									<div><input type="text" value="<?php echo $footer_border_color; ?>" id="footer_border_color" name="footer_border_color" <?php if($footer_border_color != '') { echo 'style="border-right: 20px solid '.$footer_border_color.'"'; } ?> /></div>
								</div>

								<!-- Input -->
								<div class="color_input">
									<p>Background color:</p>
									<div><input type="text" value="<?php echo $footer_background_color; ?>" id="footer_background_color" name="footer_background_color" <?php if($footer_background_color != '') { echo 'style="border-right: 20px solid '.$footer_background_color.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
						</div>
						
						<!-- End Colors -->
						
						<!-- Backgrounds -->
						<div id="tab_backgrounds" class="tab-content">
													
							<!-- Status -->
							<?php if($background_status == 1) { echo '<div class="status status-on" title="1" rel="background_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="background_status"></div>'; } ?>
							
							<input name="background_status" value="<?php echo $background_status; ?>" id="background_status" type="hidden" />
							
							<h4>Body</h4>

							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="body_background_background">
									<option value="0"<?php if($body_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($body_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($body_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
									<option value="3"<?php if($body_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
								<p>Own background:</p>
								
								<div class="own_image">
									<input type="hidden" name="body_background" value="<?php echo $body_background; ?>" id="input-body-background" />
									
									<?php if($body_background == '') { ?>
										<a href="" id="thumb-body-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<?php } else { ?>
										<a href="" id="thumb-body-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $body_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
									<?php } ?>
								</div>
								
								<div class="clear"></div>	
							</div>
							
							<!-- End Input -->
														
							<div class="input">
							
								<p>Subtle patterns:</p>
								<div class="subtle-patterns">
									<?php
										
										if($body_background_subtle_patterns != '') { ?>
										
										<div class="subtle-pattern">
											<input type="radio" name="body_background_subtle_patterns" value="<?php echo $body_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
											<img src="../image/subtle_patterns/<?php echo $body_background_subtle_patterns; ?>" width="50px" height="50px"> 
											<p><?php echo $body_background_subtle_patterns; ?></p>
											<div class="clear"></div>
										</div>
										
										<?php 
										
										}
										
										$dir = opendir ("../image/subtle_patterns/");
										while (false !== ($file = readdir($dir))) { 
											if ($file<>"." && $file<>"..") {
												if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>
																						
											<div class="subtle-pattern">
												<input type="radio" name="body_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
												<img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
												<p><?php echo $file; ?></p>
												<div class="clear"></div>
											</div>
											
									<?php
												}
												
											}
										} 
									
									?>
								</div>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Position:</p>
								<select name="body_background_position">
									<option value="top left"<?php if($body_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
									<option value="top center"<?php if($body_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
									<option value="top right"<?php if($body_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
									<option value="bottom left"<?php if($body_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
									<option value="bottom center"<?php if($body_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
									<option value="bottom right"<?php if($body_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Repeat:</p>
								<select name="body_background_repeat">
									<option value="no-repeat"<?php if($body_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
									<option value="repeat-x"<?php if($body_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
									<option value="repeat-y"<?php if($body_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
									<option value="repeat"<?php if($body_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Attachment:</p>
								<select name="body_background_attachment">
									<option value="scroll"<?php if($body_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
									<option value="fixed"<?php if($body_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<h4 style="margin-top: 20px">Top Bar</h4>

							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="topbar_background_background">
									<option value="0"<?php if($topbar_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($topbar_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($topbar_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
									<option value="3"<?php if($topbar_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
								<p>Own background:</p>
								
								<div class="own_image">
									<input type="hidden" name="topbar_background" value="<?php echo $topbar_background; ?>" id="input-topbar-background" />
									
									<?php if($topbar_background == '') { ?>
										<a href="" id="thumb-topbar-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<?php } else { ?>
										<a href="" id="thumb-topbar-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $topbar_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
									<?php } ?>
								</div>
								
								<div class="clear"></div>	
							</div>
							
							<!-- End Input -->
														
							<div class="input">
							
								<p>Subtle patterns:</p>
								<div class="subtle-patterns">
									<?php
										
										if($topbar_background_subtle_patterns != '') { ?>
										
										<div class="subtle-pattern">
											<input type="radio" name="topbar_background_subtle_patterns" value="<?php echo $topbar_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
											<img src="../image/subtle_patterns/<?php echo $topbar_background_subtle_patterns; ?>" width="50px" height="50px"> 
											<p><?php echo $topbar_background_subtle_patterns; ?></p>
											<div class="clear"></div>
										</div>
										
										<?php 
										
										}
										
										$dir = opendir ("../image/subtle_patterns/");
										while (false !== ($file = readdir($dir))) { 
											if ($file<>"." && $file<>"..") {
												if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>
																						
											<div class="subtle-pattern">
												<input type="radio" name="topbar_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
												<img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
												<p><?php echo $file; ?></p>
												<div class="clear"></div>
											</div>
											
									<?php
												}
												
											}
										} 
									
									?>
								</div>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Position:</p>
								<select name="topbar_background_position">
									<option value="top left"<?php if($topbar_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
									<option value="top center"<?php if($topbar_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
									<option value="top right"<?php if($topbar_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
									<option value="bottom left"<?php if($topbar_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
									<option value="bottom center"<?php if($topbar_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
									<option value="bottom right"<?php if($topbar_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Repeat:</p>
								<select name="topbar_background_repeat">
									<option value="no-repeat"<?php if($topbar_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
									<option value="repeat-x"<?php if($topbar_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
									<option value="repeat-y"<?php if($topbar_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
									<option value="repeat"<?php if($topbar_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Attachment:</p>
								<select name="topbar_background_attachment">
									<option value="scroll"<?php if($topbar_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
									<option value="fixed"<?php if($topbar_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<h4 style="margin-top: 20px">Header</h4>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="header_background_background">
									<option value="0"<?php if($header_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($header_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($header_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
									<option value="3"<?php if($header_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
								<p>Own background:</p>
								
								<div class="own_image">
									<input type="hidden" name="header_background" value="<?php echo $header_background; ?>" id="input-header-background" />
									
									<?php if($header_background == '') { ?>
										<a href="" id="thumb-header-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<?php } else { ?>
										<a href="" id="thumb-header-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $header_background; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<?php } ?>
								</div>
								
								<div class="clear"></div>	
							</div>
							
							<!-- End Input -->
														
							<div class="input">
							
								<p>Subtle patterns:</p>
								<div class="subtle-patterns">
									<?php
										
										if($header_background_subtle_patterns != '') { ?>
										
										<div class="subtle-pattern">
											<input type="radio" name="header_background_subtle_patterns" value="<?php echo $header_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
											<img src="../image/subtle_patterns/<?php echo $header_background_subtle_patterns; ?>" width="50px" height="50px"> 
											<p><?php echo $header_background_subtle_patterns; ?></p>
											<div class="clear"></div>
										</div>
										
										<?php 
										
										}
										
										$dir = opendir ("../image/subtle_patterns/");
										while (false !== ($file = readdir($dir))) { 
											if ($file<>"." && $file<>"..") {
												if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>
																						
											<div class="subtle-pattern">
												<input type="radio" name="header_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
												<img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
												<p><?php echo $file; ?></p>
												<div class="clear"></div>
											</div>
											
									<?php
												}
												
											}
										} 
									
									?>
								</div>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Position:</p>
								<select name="header_background_position">
									<option value="top left"<?php if($header_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
									<option value="top center"<?php if($header_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
									<option value="top right"<?php if($header_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
									<option value="bottom left"<?php if($header_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
									<option value="bottom center"<?php if($header_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
									<option value="bottom right"<?php if($header_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Repeat:</p>
								<select name="header_background_repeat">
									<option value="no-repeat"<?php if($header_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
									<option value="repeat-x"<?php if($header_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
									<option value="repeat-y"<?php if($header_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
									<option value="repeat"<?php if($header_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Attachment:</p>
								<select name="header_background_attachment">
									<option value="scroll"<?php if($header_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
									<option value="fixed"<?php if($header_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<h4 style="margin-top: 20px">CustomFooter</h4>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="customfooter_background_background">
									<option value="0"<?php if($customfooter_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($customfooter_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($customfooter_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
									<option value="3"<?php if($customfooter_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
								<p>Own background:</p>
								
								<div class="own_image">
									<input type="hidden" name="customfooter_background" value="<?php echo $customfooter_background; ?>" id="input-customfooter-background" />
									
									<?php if($customfooter_background == '') { ?>
										<a href="" id="thumb-customfooter-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<?php } else { ?>
										<a href="" id="thumb-customfooter-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $customfooter_background; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<?php } ?>
								</div>
								
								<div class="clear"></div>	
							</div>
							
							<!-- End Input -->
														
							<div class="input">
							
								<p>Subtle patterns:</p>
								<div class="subtle-patterns">
									<?php
										
										if($customfooter_background_subtle_patterns != '') { ?>
										
										<div class="subtle-pattern">
											<input type="radio" name="customfooter_background_subtle_patterns" value="<?php echo $customfooter_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
											<img src="../image/subtle_patterns/<?php echo $customfooter_background_subtle_patterns; ?>" width="50px" height="50px"> 
											<p><?php echo $customfooter_background_subtle_patterns; ?></p>
											<div class="clear"></div>
										</div>
										
										<?php 
										
										}
										
										$dir = opendir ("../image/subtle_patterns/");
										while (false !== ($file = readdir($dir))) { 
											if ($file<>"." && $file<>"..") {
												if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>
																						
											<div class="subtle-pattern">
												<input type="radio" name="customfooter_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
												<img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
												<p><?php echo $file; ?></p>
												<div class="clear"></div>
											</div>
											
									<?php
												}
												
											}
										} 
									
									?>
								</div>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Position:</p>
								<select name="customfooter_background_position">
									<option value="top left"<?php if($customfooter_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
									<option value="top center"<?php if($customfooter_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
									<option value="top right"<?php if($customfooter_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
									<option value="bottom left"<?php if($customfooter_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
									<option value="bottom center"<?php if($customfooter_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
									<option value="bottom right"<?php if($customfooter_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Repeat:</p>
								<select name="customfooter_background_repeat">
									<option value="no-repeat"<?php if($customfooter_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
									<option value="repeat-x"<?php if($customfooter_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
									<option value="repeat-y"<?php if($customfooter_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
									<option value="repeat"<?php if($customfooter_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Attachment:</p>
								<select name="customfooter_background_attachment">
									<option value="scroll"<?php if($customfooter_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
									<option value="fixed"<?php if($customfooter_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
														
						</div>
					
					</div>
					
					<!-- End Design -->
					
					<!-- Footer -->
					
					<div id="tab_footer" class="tab-content3">
					
						<div class="footer_left">
						
							<!-- Contact, About us, Facebook TABS -->
							
							<div id="tabs_footer" class="htabs main-tabs">
								
								<?php foreach ($languages as $language): ?>
								<a href="#tab_customfooter_<?php echo $language['language_id']; ?>"><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							
							</div>
							
							<!-- End Contact, About us, Facebook Tabs -->
						
						</div>
						
						<div class="footer_right">
							
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							
							<div id="tab_customfooter_<?php echo $language_id; ?>">
							
								<!-- Contact, About us, Facebook TABS -->
								
								<div id="tabs_<?php echo $language_id; ?>" class="htabs tabs-design">
								
									<a href="#tab_contact_<?php echo $language_id; ?>" class="tcontact"><span>Contact</span></a>
									<a href="#tab_aboutus_<?php echo $language_id; ?>" class="taboutus"><span>About us</span></a>
									<a href="#tab_facebook_<?php echo $language_id; ?>" class="tfacebook"><span>Facebook</span></a>
									<a href="#tab_twitter_<?php echo $language_id; ?>" class="ttwitter"><span>Twitter</span></a>
									<a href="#tab_customblock_<?php echo $language_id; ?>" class="tcustomblock"><span>Custom</span></a>
								
								</div>
								
								<!-- Contact, About us, Facebook -->
								
								<!-- TAB CONTACT -->
								
								<div id="tab_contact_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['contact_status'])) { ?>
										<?php if($customfooter[$language_id]['contact_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_contact_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; } ?>
									
										<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="<?php echo $customfooter[$language_id]['contact_status']; ?>" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } else { ?>
										<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="0" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } ?>
									
									<h4>Contact</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['contact_title'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_title]" value="<?php echo $customfooter[$language_id]['contact_title']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Phone:</p>
										<?php if(isset($customfooter[$language_id]['contact_phone'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_phone]" value="<?php echo $customfooter[$language_id]['contact_phone']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_phone]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Phone 2:</p>
										<?php if(isset($customfooter[$language_id]['contact_phone2'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" value="<?php echo $customfooter[$language_id]['contact_phone2']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Skype:</p>
										<?php if(isset($customfooter[$language_id]['contact_skype'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_skype]" value="<?php echo $customfooter[$language_id]['contact_skype']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_skype]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Skype 2:</p>
										<?php if(isset($customfooter[$language_id]['contact_skype2'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" value="<?php echo $customfooter[$language_id]['contact_skype2']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>E-mail:</p>
										<?php if(isset($customfooter[$language_id]['contact_email'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_email]" value="<?php echo $customfooter[$language_id]['contact_email']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_email]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>E-mail 2:</p>
										<?php if(isset($customfooter[$language_id]['contact_email2'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_email2]" value="<?php echo $customfooter[$language_id]['contact_email2']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][contact_email2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB CONTACT -->
								
								<!-- TAB About us -->
								
								<div id="tab_aboutus_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['aboutus_status'])) { ?>
										<?php if($customfooter[$language_id]['aboutus_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } ?>
									
										<input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="<?php echo $customfooter[$language_id]['aboutus_status']; ?>" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
									<?php } else { ?>
										<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; ?>
										<input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="0" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
									<?php } ?>
									
									<h4>About us</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['aboutus_title'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" value="<?php echo $customfooter[$language_id]['aboutus_title']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									
									<!-- Input -->
									
									<div class="input">										
									
										<p>Text:</p>
										<?php if(isset($customfooter[$language_id]['aboutus_text'])) { ?>
											<textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]"><?php echo $customfooter[$language_id]['aboutus_text']; ?></textarea>
										<?php } else { ?>
											<textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]"></textarea>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB About US -->
								
								<!-- TAB Facebook -->
								
								<div id="tab_facebook_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['facebook_status'])) { ?>
										<?php if($customfooter[$language_id]['facebook_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } ?>
									
										<input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="<?php echo $customfooter[$language_id]['facebook_status']; ?>" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
									<?php } else { ?>
										<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="0" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
									<?php } ?>
									
									<h4>Facebook</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['facebook_title'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][facebook_title]" value="<?php echo $customfooter[$language_id]['facebook_title']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][facebook_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									
									<!-- Input -->

									<div class="input">
									
										<p>Facebook ID:</p>
										<?php if(isset($customfooter[$language_id]['facebook_id'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][facebook_id]" value="<?php echo $customfooter[$language_id]['facebook_id']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][facebook_id]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Show Faces:</p>
										<select name="customfooter[<?php echo $language_id; ?>][show_faces]">
											<?php if(isset($customfooter[$language_id]['show_faces'])) { ?>
							            		<option value="0" <?php if($customfooter[$language_id]['show_faces'] =='0'){echo ' selected="selected"';} ?>>Yes</option>
								            	<option value="1" <?php if($customfooter[$language_id]['show_faces'] =='1'){echo ' selected="selected"';} ?>>No</option>
							              	<?php } else { ?>
		 						            	<option value="0" selected="selected">Yes</option>
								            	<option value="1">No</option>						              
							              	<?php } ?>
										</select>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Number of faces:</p>
										<?php if(isset($customfooter[$language_id]['facebook_faces'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" value="<?php echo $customfooter[$language_id]['facebook_faces']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Height:</p>
										<?php if(isset($customfooter[$language_id]['facebook_height'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][facebook_height]" value="<?php echo $customfooter[$language_id]['facebook_height']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][facebook_height]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB Facebook -->
								
								<!-- TAB Twitter -->
								
								<div id="tab_twitter_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['twitter_status'])) { ?>
										<?php if($customfooter[$language_id]['twitter_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } ?>
									
										<input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="<?php echo $customfooter[$language_id]['twitter_status']; ?>" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
									<?php } else { ?>
										<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="0" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
									<?php } ?>
									
									<h4>Twitter</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['twitter_title'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][twitter_title]" value="<?php echo $customfooter[$language_id]['twitter_title']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][twitter_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Twitter profile:</p>
										<?php if(isset($customfooter[$language_id]['twitter_profile'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][twitter_profile]" value="<?php echo $customfooter[$language_id]['twitter_profile']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][twitter_profile]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Widget id:</p>
										<?php if(isset($customfooter[$language_id]['twitter_widget_id'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" value="<?php echo $customfooter[$language_id]['twitter_widget_id']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Theme:</p>
										<?php if(isset($customfooter[$language_id]['twitter_theme'])) { ?>
											<select name="customfooter[<?php echo $language_id; ?>][twitter_theme]" />
												<option value="light"<?php if($customfooter[$language_id]['twitter_theme'] == 'light') echo ' selected="selected"'; ?>>Light</option>
												<option value="dark"<?php if($customfooter[$language_id]['twitter_theme'] == 'dark') echo ' selected="selected"'; ?>>Dark</option>
											</select>
										<?php } else { ?>
											<select name="customfooter[<?php echo $language_id; ?>][twitter_theme]" />
												<option value="light" selected="selected">Light</option>
												<option value="dark">Dark</option>
											</select>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB Twitter -->
								
								<!-- TAB Custom block -->
								
								<div id="tab_customblock_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['customblock_status'])) { ?>
										<?php if($customfooter[$language_id]['customblock_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_customblock_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_customblock_status"></div>'; } ?>
									
										<input name="customfooter[<?php echo $language_id; ?>][customblock_status]" value="<?php echo $customfooter[$language_id]['customblock_status']; ?>" id="customfooter_<?php echo $language_id; ?>_customblock_status" type="hidden" />
									<?php } else { ?>
										<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_customblock_status"></div>'; ?>
										<input name="customfooter[<?php echo $language_id; ?>][customblock_status]" value="0" id="customfooter_<?php echo $language_id; ?>_customblock_status" type="hidden" />
									<?php } ?>
									
									<h4>Custom block</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['customblock_title'])) { ?>
											<input name="customfooter[<?php echo $language_id; ?>][customblock_title]" value="<?php echo $customfooter[$language_id]['customblock_title']; ?>" />
										<?php } else { ?>
											<input name="customfooter[<?php echo $language_id; ?>][customblock_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									
									<!-- Input -->
									
									<div class="input">										
									
										<p>Text:</p>
										<?php if(isset($customfooter[$language_id]['customblock_text'])) { ?>
											<textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][customblock_text]"><?php echo $customfooter[$language_id]['customblock_text']; ?></textarea>
										<?php } else { ?>
											<textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][customblock_text]"></textarea>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB Custom block -->
								
								<script type="text/javascript"><!--
								$('#tabs_<?php echo $language_id; ?> a').tabs();
								if($.cookie('tabs_<?php echo $language_id; ?>') > 0) {
									$('#tabs_<?php echo $language_id; ?> a').eq($.cookie('tabs_<?php echo $language_id; ?>')).trigger("click");
								}
								$('#tabs_<?php echo $language_id; ?> a').click(function() {
									var element_index = $('#tabs_<?php echo $language_id; ?> a').index(this);
									$.cookie('tabs_<?php echo $language_id; ?>', element_index); 
								});
								//--></script> 
							
							</div>
							
							<?php } ?>
						
						</div>
						
						<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
					
					</div>
					
					<!-- End Footer -->
					
					<!-- ''''''''''''''' PAYMENT -->
					
					<div id="tab_payment" class="tab-content">
					
						<!-- Status -->
							
						<?php if($payment_status == 0 && $payment_status != '') { echo '<div class="status status-off" title="0" rel="payment_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_status"></div>'; } ?>
						
						<input name="payment_status" value="<?php echo $payment_status; ?>" id="payment_status" type="hidden" />
						
						<table class="payment_images" id="payment">
							<thead>
								<tr>
									<td class="first">Icon</td>
									<td>Name</td>
									<td>Link</td>
									<td>Sort</td>
									<td>New Tab</td>
									<td>Delete</td>
								</tr>
							</thead>
							<?php $module_row = 0; if($payment != '') { ?>
								<?php foreach($payment as $payments) { ?>
								<tbody id="payment<?php echo $module_row; ?>">
									<tr>
										<td class="first">
											<div class="own_image">
												<input type="hidden" name="payment[<?php echo $module_row; ?>][img]" value="<?php echo $payments['img']; ?>" id="input-<?php echo $module_row; ?>_img_preview" />
												
												<?php if($payments['img'] == '') { ?>
													<a href="" id="thumb-<?php echo $module_row; ?>_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
												<?php } else { ?>
													<a href="" id="thumb-<?php echo $module_row; ?>_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $payments['img']; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
												<?php } ?>
											</div>
										</td>
										<td>
											<div class="payment-name">
												<input type="text" value="<?php if(isset($payments['name'])) { echo $payments['name']; } ?>" name="payment[<?php echo $module_row; ?>][name]">
											</div>
										</td>
										<td>
											<input type="text" value="<?php if(isset($payments['link'])) { echo $payments['link']; } ?>" name="payment[<?php echo $module_row; ?>][link]">
										</td>
										<td>
											<input type="text" class="sort" value="<?php if(isset($payments['sort'])) { echo $payments['sort']; } ?>" name="payment[<?php echo $module_row; ?>][sort]">
										</td>
										<td>
											<?php if(isset($payments['new_tab'])) { ?>
												<?php if($payments['new_tab'] == 0 && $payments['new_tab'] != '') { echo '<div class="status status-off" title="0" rel="payment_'.$module_row.'_new_tab"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_'.$module_row.'_new_tab"></div>'; } ?>
											<?php } else { echo '<div class="status status-off" title="0" rel="payment_'.$module_row.'_new_tab"></div>'; } ?>
											<input name="payment[<?php echo $module_row; ?>][new_tab]" value="<?php if(isset($payments['new_tab'])) { echo $payments['new_tab']; } else { echo '0'; } ?>" id="payment_<?php echo $module_row; ?>_new_tab" type="hidden" />
										</td>
										<td>
											<a onclick="$('#payment<?php echo $module_row; ?>').remove();" class="remove-payment">Remove</a>
										</td>
									</tr>
								</tbody>
								<?php $module_row++; } ?>
							<?php } ?>
							<tfoot></tfoot>
						</table>
						
						<a onclick="addPayment();" class="add-item-payment">Add item</a>
						
						<script type="text/javascript"><!--
						var module_row = <?php echo $module_row; ?>;
						
						function addPayment() {
							html  = '<tbody id="payment' + module_row + '">';
							html += '  <tr>';
							html += '	 <td class="first">';
							html += '		<div class="own_image"><input type="hidden" name="payment[' + module_row + '][img]" value="" id="input-' + module_row + '_img_preview" /><a href="" id="thumb-' + module_row + '_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a></div>';
							html += '	 </td>';
							html += '    <td>';
							html += '		<div class="payment_name"><input type="text" name="payment[' + module_row + '][name]"></div>';
							html += '    </td>';
							html += '    <td>';
							html += '		<input type="text" name="payment[' + module_row + '][link]">';
							html += '    </td>';
							html += '    <td>';
							html += '		<input type="text" class="sort" name="payment[' + module_row + '][sort]">';
							html += '    </td>';
							html += '    <td>';
							html += '		<div class="status status-off" title="0" rel="payment_' + module_row + '_new_tab"></div><input name="payment[' + module_row + '][new_tab]" value="0" id="payment_' + module_row + '_new_tab" type="hidden" />';
							html += '    </td>';
							html += '    <td><a onclick="$(\'#payment' + module_row + '\').remove();" class="remove-payment">Remove</a></td>';
							html += '  </tr>';
							html += '</tbody>';
							
							$('#payment tfoot').before(html);
							
							module_row++;
						}
						//--></script> 
	
					</div>
					
					<!-- ''''''''''''''''' END PAYMENT -->
					
					<!-- Custom code -->
					
					<div id="tab_custom_code" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_custom_code" class="htabs tabs-design">
						
							<a href="#tab_css" id="tcss"><span>Css</span></a>
							<a href="#tab_javascript" id="tjavascript"><span>Javascript</span></a>
						
						</div>
						
						<!-- ....... TABS CSS -->
						
						<div id="tab_css" class="tab-content">
						
							<!-- Status -->
							
							<?php if($custom_code_css_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_css_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_css_status"></div>'; } ?>
							
							<input name="custom_code_css_status" value="<?php echo $custom_code_css_status; ?>" id="custom_code_css_status" type="hidden" />
							
							<!-- Input -->
							
							<div class="input">										
							
								<?php if(isset($custom_code_css)) { ?>
								<textarea rows="0" cols="0" name="custom_code_css"><?php echo $custom_code_css; ?></textarea>
								<?php } else { ?>
								<textarea rows="0" cols="0" name="custom_code_css"></textarea>
								<?php } ?>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
						
						</div>
						
						<!-- ....... END TABS CSS -->
						
						<!-- ....... TABS JAVASCRIPT -->
						
						<div id="tab_javascript" class="tab-content">
						
							<!-- Status -->
							
							<?php if($custom_code_javascript_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_javascript_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_javascript_status"></div>'; } ?>
							
							<input name="custom_code_javascript_status" value="<?php echo $custom_code_javascript_status; ?>" id="custom_code_javascript_status" type="hidden" />
							
							<!-- Input -->
							
							<div class="input">										
							
								<?php if(isset($custom_code_js)) { ?>
								<textarea rows="0" cols="0" name="custom_code_js"><?php echo $custom_code_js; ?></textarea>
								<?php } else { ?>
								<textarea rows="0" cols="0" name="custom_code_js"></textarea>
								<?php } ?>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
						
						</div>
						
						<!-- ....... END TABS JAVASCRIPT -->
										
					</div>
					
					<!-- End Custom code -->
					
					<!-- Widget -->
					
					<div id="tab_widgets" class="tab-content2">
						<!--					-->	
						<div id="tabs_widgets" class="htabs tabs-design">
						
							<a href="#tab_widget_facebook" class="tfacebook"><span>Facebook</span></a>
							<a href="#tab_widget_twitter" class="ttwitter"><span>Twitter</span></a>
							<a href="#tab_widget_custom" class="tcustomblock"><span>Custom</span></a>
						
						</div>
											
						<div id="tab_widget_facebook" class="tab-content">
						
							<!-- Status -->
							
							<?php if($widget_facebook_status == 1) { echo '<div class="status status-on" title="1" rel="widget_facebook_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_facebook_status"></div>'; } ?>
							
							<input name="widget_facebook_status" value="<?php echo $widget_facebook_status; ?>" id="widget_facebook_status" type="hidden" />
							
							<h4>Facebook</h4>
							
							<!-- Input -->

							<div class="input">
									
								<p>Facebook ID:</p>
								<?php if(isset($widget_facebook_id)) { ?>
									<input name="widget_facebook_id" value="<?php echo $widget_facebook_id; ?>" />
								<?php } else { ?>
									<input name="widget_facebook_id" value="" />
								<?php } ?>
								
								<a href="http://findmyfacebookid.com/" target="_blank" style="display: block;float: left;width: auto;margin-top: 7px">Find your Facebook ID »</a>
									
								<div class="clear"></div>
									
							</div>
									
							<!-- End Input -->
							<!-- Input -->
									
							<div class="input">
									
								<p>Position:</p>
								<select name="widget_facebook_position">
									<?php if(isset($widget_facebook_position)) { ?>
							           <option value="0" <?php if($widget_facebook_position =='0'){echo ' selected="selected"';} ?>>Right</option>
								       <option value="1" <?php if($widget_facebook_position =='1'){echo ' selected="selected"';} ?>>Left</option>
							         <?php } else { ?>
		 						        <option value="0" selected="selected">Right</option>
								        <option value="1">Left</option>						              
							         <?php } ?>
								</select>
									
								<div class="clear"></div>
									
							 </div>
									
							<!-- End Input -->
						
						</div>
												
						<div id="tab_widget_twitter" class="tab-content">
						
							<!-- Status -->
							
							<?php if($widget_twitter_status == 1) { echo '<div class="status status-on" title="1" rel="widget_twitter_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_twitter_status"></div>'; } ?>
							
							<input name="widget_twitter_status" value="<?php echo $widget_twitter_status; ?>" id="widget_twitter_status" type="hidden" />
							
							<h4>Twitter</h4>
							
							<!-- Input -->

							<div class="input">
									
								<p>Twitter username:</p>
								<?php if(isset($widget_twitter_user_name)) { ?>
									<input name="widget_twitter_user_name" value="<?php echo $widget_twitter_user_name; ?>" />
								<?php } else { ?>
									<input name="widget_twitter_user_name" value="" />
								<?php } ?>
																	
								<div class="clear"></div>
									
							</div>
									
							<!-- End Input -->
							
							<!-- Input -->

							<div class="input">
									
								<p>Widget ID:</p>
								<?php if(isset($widget_twitter_id)) { ?>
									<input name="widget_twitter_id" value="<?php echo $widget_twitter_id; ?>" />
								<?php } else { ?>
									<input name="widget_twitter_id" value="" />
								<?php } ?>
																	
								<div class="clear"></div>
									
							</div>
									
							<!-- End Input -->
							
							<!-- Input -->
									
							<div class="input">
									
								<p>Tweet limit:</p>
								<select name="widget_twitter_limit">
									<?php if(isset($widget_twitter_limit)) { ?>
							           <option value="1" <?php if($widget_twitter_limit =='1'){echo ' selected="selected"';} ?>>1</option>
								       <option value="2" <?php if($widget_twitter_limit =='2'){echo ' selected="selected"';} ?>>2</option>
								       <option value="3" <?php if($widget_twitter_limit =='3'){echo ' selected="selected"';} ?>>3</option>
							         <?php } else { ?>
									    <option value="1">1</option>
								        <option value="2">2</option>						              
								        <option value="3" selected="selected">3</option>						              
							         <?php } ?>
								</select>
									
								<div class="clear"></div>
									
							 </div>
									
							<!-- End Input -->
							
							<!-- Input -->
									
							<div class="input">
									
								<p>Position:</p>
								<select name="widget_twitter_position">
									<?php if(isset($widget_twitter_position)) { ?>
							           <option value="0" <?php if($widget_twitter_position =='0'){echo ' selected="selected"';} ?>>Right</option>
								       <option value="1" <?php if($widget_twitter_position =='1'){echo ' selected="selected"';} ?>>Left</option>
							         <?php } else { ?>
		 						        <option value="0" selected="selected">Right</option>
								        <option value="1">Left</option>						              
							         <?php } ?>
								</select>
									
								<div class="clear"></div>
									
							 </div>
									
							<!-- End Input -->
						
						</div>
						
						<div id="tab_widget_custom" class="tab-content">
						
							<!-- Status -->
							
							<?php if($widget_custom_status == 1) { echo '<div class="status status-on" title="1" rel="widget_custom_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_custom_status"></div>'; } ?>
							
							<input name="widget_custom_status" value="<?php echo $widget_custom_status; ?>" id="widget_custom_status" type="hidden" />
							
							<h4>Custom block</h4>
							
							<div class="customblocktabs htabs">
								<?php foreach ($languages as $language) { ?>
								<a href="#content_customblock_<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
								<?php } ?>
							</div>
							
							<?php foreach ($languages as $language) { $lang_id = $language['language_id']; ?>
							<!-- Input -->
							<div id="content_customblock_<?php echo $language['language_id']; ?>" class="content_customblock">
								<div class="input clearfix">
									<textarea name="widget_custom_content[<?php echo $language['language_id']; ?>]" id="widget_custom_content_<?php echo $language['language_id']; ?>"><?php if(isset($widget_custom_content[$lang_id])) { echo $widget_custom_content[$lang_id]; } ?></textarea>
								</div>
							</div>
							<?php } ?>
							
							<!-- Input -->
									
							<div class="input">
									
								<p>Position:</p>
								<select name="widget_custom_position">
									<?php if(isset($widget_custom_position)) { ?>
							           <option value="0" <?php if($widget_custom_position =='0'){echo ' selected="selected"';} ?>>Right</option>
								       <option value="1" <?php if($widget_custom_position =='1'){echo ' selected="selected"';} ?>>Left</option>
							         <?php } else { ?>
									        <option value="0" selected="selected">Right</option>
								        <option value="1">Left</option>						              
							         <?php } ?>
								</select>
									
								<div class="clear"></div>
									
							 </div>
									
							<!-- End Input -->
							
						</div>
																
					</div>
					
					<!-- End Widgets -->
					
					<!-- Compressor Code -->
					
					<div id="tab_compressor_code" class="tab-content">
					
						<!-- Status -->
						<?php if($compressor_code_status == 0) { echo '<div class="status status-off" title="0" rel="compressor_code_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="compressor_code_status"></div>'; } ?>
						
						<input name="compressor_code_status" value="<?php echo $compressor_code_status; ?>" id="compressor_code_status" type="hidden" />
						
						<p style="font-family:Open Sans;color:#4c4c4c;font-size:12px;line-height: 21px;padding-top: 15px">The content of css and js files are placed in a single file, delete spaces, which allows for faster page loading. Changes made when this option is enabled will be visible after an hour.</p>
						
						<p style="background: #D9EDFA;padding:12px 15px;margin-top:20px">You can enable Compressor code ONLY when your store will be complete and no more changes will be made.</p>
						
					</div>
					
					<!-- End Compressor Code -->
					
					<!-- Compressor Code -->
					
					<div id="tab_install_data" class="tab-content">

						<p style="font-family:Open Sans;color:#4c4c4c;font-size:12px;line-height: 21px;padding-top: 12px">If you want to make your shop look exactly like our demo. Install sample data.</p>

						<h4>Install sample data:</h4>
						
						<div class="input">
							<p style="width:240px">Custom module (banners):</p>
							<input type="submit" name="install_custom_module" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">
							
							<div class="clear"></div>
						</div>
						
						<div class="input">
							<p style="width:240px">Carousel item (testimonials):</p>
							<input type="submit" name="install_carousel_item" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">
							
							<div class="clear"></div>
						</div>
						
						<div class="input">
							<p style="width:240px">Camera slider:</p>
							<input type="submit" name="install_camera_slider" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">
							
							<div class="clear"></div>
						</div>
						
						<div class="input">
							<p style="width:240px">Revolution slider:</p>
							<input type="submit" name="install_revolution_slider" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">
							
							<div class="clear"></div>
						</div>
						
						<div class="input">
							<p style="width:240px">MegaMenu:</p>
							<input type="submit" name="install_megamenu" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">
							
							<div class="clear"></div>
						</div>
						
					</div>
					
					<!-- End Compressor Code -->
					
					<!-- Custom block -->
					
					<div id="tab_custom_block" class="tab-content3">
						<div class="footer_left" style="margin-top: 149px">
							<div id="tabs_custom_block" class="htabs main-tabs">
								<?php foreach ($languages as $language): ?>
								<a href="#tab_custom_block_<?php echo $language['language_id']; ?>"><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							</div>
						</div>
						
						<div class="footer_right">
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							<div id="tab_custom_block_<?php echo $language_id; ?>">
								<div id="tabs_custom_block_<?php echo $language_id; ?>" class="htabs tabs-design">
									<a href="#tab_contact_page_<?php echo $language_id; ?>" class="tcontact"><span>Contact page</span></a>
									<a href="#tab_product_page_<?php echo $language_id; ?>" class="tproduct"><span>Product page</span></a>
								</div>
								
								<div id="tab_contact_page_<?php echo $language_id; ?>" class="tab-content4">
									<!-- Status -->
									<?php if(isset($custom_block['contact_page'][$language_id]['status'])) { ?>
									<?php if($custom_block['contact_page'][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; } ?>
									
									<input name="custom_block[contact_page][<?php echo $language_id; ?>][status]" value="<?php echo $custom_block['contact_page'][$language_id]['status']; ?>" id="custom_block_contact_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; ?>
									<input name="custom_block[contact_page][<?php echo $language_id; ?>][status]" value="0" id="custom_block_contact_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } ?>
									
									<h4>Custom block</h4>
									<div class="input">
										<p>Heading:</p>
										<?php if(isset($custom_block['contact_page'][$language_id]['heading'])) { ?>
										<input name="custom_block[contact_page][<?php echo $language_id; ?>][heading]" value="<?php echo $custom_block['contact_page'][$language_id]['heading']; ?>" />
										<?php } else { ?>
										<input name="custom_block[contact_page][<?php echo $language_id; ?>][heading]" value="" />
										<?php } ?>
										<div class="clear"></div>
									</div>
									
									<div class="input">										
										<p>Text:</p>
										<?php if(isset($custom_block['contact_page'][$language_id]['text'])) { ?>
										<textarea rows="0" cols="0" name="custom_block[contact_page][<?php echo $language_id; ?>][text]"><?php echo $custom_block['contact_page'][$language_id]['text']; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="custom_block[contact_page][<?php echo $language_id; ?>][text]"></textarea>
										<?php } ?>
										<div class="clear"></div>
									</div>
								</div>
								
								<div id="tab_product_page_<?php echo $language_id; ?>" class="tab-content4">
									<!-- Status -->
									<?php if(isset($custom_block['product_page'][$language_id]['status'])) { ?>
									<?php if($custom_block['product_page'][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="custom_block_product_page_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_product_page_'.$language_id.'_status"></div>'; } ?>
									
									<input name="custom_block[product_page][<?php echo $language_id; ?>][status]" value="<?php echo $custom_block['product_page'][$language_id]['status']; ?>" id="custom_block_product_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="custom_block_product_page_'.$language_id.'_status"></div>'; ?>
									<input name="custom_block[product_page][<?php echo $language_id; ?>][status]" value="0" id="custom_block_product_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } ?>
									
									<h4>Custom block</h4>
									<div class="input">
										<p>Heading:</p>
										<?php if(isset($custom_block['product_page'][$language_id]['heading'])) { ?>
										<input name="custom_block[product_page][<?php echo $language_id; ?>][heading]" value="<?php echo $custom_block['product_page'][$language_id]['heading']; ?>" />
										<?php } else { ?>
										<input name="custom_block[product_page][<?php echo $language_id; ?>][heading]" value="" />
										<?php } ?>
										<div class="clear"></div>
									</div>
									
									<div class="input">										
										<p>Text:</p>
										<?php if(isset($custom_block['product_page'][$language_id]['text'])) { ?>
										<textarea rows="0" cols="0" name="custom_block[product_page][<?php echo $language_id; ?>][text]"><?php echo $custom_block['product_page'][$language_id]['text']; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="custom_block[product_page][<?php echo $language_id; ?>][text]"></textarea>
										<?php } ?>
										<div class="clear"></div>
									</div>
								</div>
							</div>
							
							<script type="text/javascript"><!--
							$('#tabs_custom_block_<?php echo $language_id; ?> a').tabs();
							if($.cookie('tabs_custom_block_<?php echo $language_id; ?>') > 0) {
								$('#tabs_custom_block_<?php echo $language_id; ?> a').eq($.cookie('tabs_custom_block_<?php echo $language_id; ?>')).trigger("click");
							}
							$('#tabs_custom_block_<?php echo $language_id; ?> a').click(function() {
								var element_index = $('#tabs_custom_block_<?php echo $language_id; ?> a').index(this);
								$.cookie('tabs_custom_block_<?php echo $language_id; ?>', element_index); 
							});
							//--></script> 
							<?php } ?>
						</div>		
					</div>
					
					<!-- End Custom block -->
										
					<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
				
				</div>
				
				<!-- End Tabs -->
				
				<!-- Buttons -->
				
				<div class="buttons"><input type="submit" name="button-save" class="button-save" value=""></div>
				
				<!-- End Buttons -->
			
			</div>
		
		</div>
		<!-- End Content -->
		<?php } else { ?>
			<div class="content">
				<div style="padding:20px 40px;text-align:center;">
					You need to add or active skin.
				</div>
			</div>
		<?php } ?>
		
	</form>
	
</div>
<!-- End Theme Options -->

</div>

<!-- END #CONTENT -->

<script type="text/javascript">

$(document).ready(function() {

	$('.color_input input').ColorPicker({
		onChange: function (hsb, hex, rgb, el) {
			$(el).val("#" +hex);
			$(el).css("border-right", "20px solid #" + hex);
		},
		onShow: function (colpkr) {
			$(colpkr).show();
			return false;
		},
		onHide: function (colpkr) {
			$(colpkr).hide();
			return false;
		}
	});
});
</script>
<script type="text/javascript"><!--
$(document).ready(function(){ 
	$('#tabs a').tabs();
	if($.cookie('tabs_cookie') > 0) {
		$('#tabs a').eq($.cookie('tabs_cookie')).trigger("click");
	}
	$('#tabs a').click(function() {
		var element_index = $('#tabs a').index(this);
		$.cookie('tabs_cookie', element_index); 
	});
	
	$('#tabs_design a').tabs();
	if($.cookie('tabs_design_cookie') > 0) {
		$('#tabs_design a').eq($.cookie('tabs_design_cookie')).trigger("click");
	}
	$('#tabs_design a').click(function() {
		var element_index = $('#tabs_design a').index(this);
		$.cookie('tabs_design_cookie', element_index); 
	});
	
	$('#tabs_footer a').tabs();
	if($.cookie('tabs_footer_cookie') > 0) {
		$('#tabs_footer a').eq($.cookie('tabs_footer_cookie')).trigger("click");
	}
	$('#tabs_footer a').click(function() {
		var element_index = $('#tabs_footer a').index(this);
		$.cookie('tabs_footer_cookie', element_index); 
	});
	
	$('#tabs_general a').tabs();
	if($.cookie('tabs_general_cookie') > 0) {
		$('#tabs_general a').eq($.cookie('tabs_general_cookie')).trigger("click");
	}
	$('#tabs_general a').click(function() {
		var element_index = $('#tabs_general a').index(this);
		$.cookie('tabs_general_cookie', element_index); 
	});
		
	$('#tabs_widgets a').tabs();
	if($.cookie('tabs_widgets_cookie') > 0) {
		$('#tabs_widgets a').eq($.cookie('tabs_widgets_cookie')).trigger("click");
	}
	$('#tabs_widgets a').click(function() {
		var element_index = $('#tabs_widgets a').index(this);
		$.cookie('tabs_widgets_cookie', element_index); 
	});
	
	$('#tabs_custom_code a').tabs();
	if($.cookie('tabs_custom_code_cookie') > 0) {
		$('#tabs_custom_code a').eq($.cookie('tabs_custom_code_cookie')).trigger("click");
	}
	$('#tabs_custom_code a').click(function() {
		var element_index = $('#tabs_custom_code a').index(this);
		$.cookie('tabs_custom_code_cookie', element_index); 
	});
	
	$('#tabs_custom_block a').tabs();
	if($.cookie('tabs_custom_block') > 0) {
		$('#tabs_custom_block a').eq($.cookie('tabs_custom_block')).trigger("click");
	}
	$('#tabs_custom_block a').click(function() {
		var element_index = $('#tabs_custom_block a').index(this);
		$.cookie('tabs_custom_block', element_index); 
	});
});
//--></script> 

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript">
	<?php foreach ($languages as $language) { ?>
	CKEDITOR.replace('widget_custom_content_<?php echo $language['language_id']; ?>');
	<?php } ?>
	
	 $('.customblocktabs a').tabs();
</script>

<script type="text/javascript">
jQuery(document).ready(function($) {
	
	$('#theme-options').on('click', '.status', function () {
		
		var styl = $(this).attr("rel");
		var co = $(this).attr("title");
		
		if(co == 1) {
		
			$(this).removeClass('status-on');
			$(this).addClass('status-off');
			$(this).attr("title", "0");

			$("#"+styl+"").val(0);
		
		}
		
		if(co == 0) {
		
			$(this).addClass('status-on');
			$(this).removeClass('status-off');
			$(this).attr("title", "1");

			$("#"+styl+"").val(1);
		
		}
		
	});

});	
</script>
<script type="text/javascript">
$(document).ready(function() {
	
	$('#theme-options').on('change', 'select.select-page-width', function () {
		$("select.select-page-width option:selected").each(function() {
			if($(this).val() == 2) {
				$(".page-width").show();
			} else {
				$(".page-width").hide();
			}
		});
	});
	
	$('#theme-options').on('change', '.input-subtle-pattern', function () {
		$("#content").css("background-image", "url(../image/subtle_patterns/" + $(this).val() + ")");
	});
	
});
</script>
<?php echo $footer; ?>
