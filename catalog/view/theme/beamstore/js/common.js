//Beamstore主题js
$(document).ready(function() {
	// Highlight any found errors
	$('.text-danger').each(function() {
		var element = $(this).parent().parent();
		
		if (element.hasClass('form-group')) {
			element.addClass('has-error');
		}
	});
	
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) && responsive_design == 'yes' && $(window).width() < 768) {
		var i = 0;
		var produkty = [];
		
		$( ".box-product .carousel .item" ).each(function() {
			$( this ).find( ".product-grid .row > div" ).each(function() {
				if(i > 1) {
					produkty.push($(this).html());
				}
				
				i++;
			});
			for ( var s = i-3; s >= 0; s--, s-- ) {
				var html = "<div class='item'><div class='product-grid'><div class='row'>";
				if (produkty[s-1] != undefined) {
					html += "<div class='col-xs-6'>" + produkty[s-1] + "</div>";
				}
				if (produkty[s] != undefined) {
					html += "<div class='col-xs-6'>" + produkty[s] + "</div>";
				}
				html += "</div></div></div>";
				
				$( this ).after( html );
			}
			
			produkty = [];
			i = 0;
		});
	}
	
	/* Search */
	$('.button-search').bind('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var search = $('header input[name=\'search\']').val();
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
	
	$('header input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href') + 'index.php?route=product/search';
			 
			var search = $('header input[name=\'search\']').val();
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		}
	});
	
	$(window).scroll(function(){
		if ($(this).scrollTop() > 300) {
	    	$('.scrollup').fadeIn();
	    } else {
			$('.scrollup').fadeOut();
		}
	}); 
	
	$('.scrollup').click(function(){
		$("html, body").animate({ scrollTop: 0 }, 600);
		return false;
	});
	
	/* Search MegaMenu */
	$('.button-search2').bind('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var search = $('.container-megamenu input[name=\'search2\']').val();
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
	
	$('.container-megamenu input[name=\'search2\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href') + 'index.php?route=product/search';
			 
			var search = $('.container-megamenu input[name=\'search2\']').val();
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		}
	});
	
	/* Quatity buttons */
	
	$('#q_up').click(function(){
		var q_val_up=parseInt($("input#quantity_wanted").val());
		if(isNaN(q_val_up)) {
			q_val_up=0;
		}
		$("input#quantity_wanted").val(q_val_up+1).keyup(); 
		return false; 
	});
	
	$('#q_down').click(function(){
		var q_val_up=parseInt($("input#quantity_wanted").val());
		if(isNaN(q_val_up)) {
			q_val_up=0;
		}
		
		if(q_val_up>1) {
			$("input#quantity_wanted").val(q_val_up-1).keyup();
		} 
		return false; 
	});
	
	// tooltips on hover
	$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
	
	// Makes tooltips work on ajax generated content
	$(document).ajaxStop(function() {
		$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
	});	
});

function getURLVar(key) {
    var value = [];
    
    var query = String(document.location).split('?');
    
    if (query[1]) {
        var part = query[1].split('&');

        for (i = 0; i < part.length; i++) {
            var data = part[i].split('=');
            
            if (data[0] && data[1]) {
                value[data[0]] = data[1];
            }
        }
        
        if (value[key]) {
            return value[key];
        } else {
            return '';
        }
    }
} 
	//非详情商品制作functions
var create={
	'add':function(access_token,opensite_reserved_param,designstudio_id){
		if(access_token){
			$.ajax({
				type:'post',
				url:'index.php?route=product/isRequired',
				data:'product_id='+opensite_reserved_param,
				dataType:'json',
				success:function(data){
					if(data){
						window.location.href="index.php?route=product/product&product_id="+opensite_reserved_param;
					}else{
						opensite_reserved_param='{"product_id":"'+opensite_reserved_param+'"}';
						opensite_reserved_param=window.btoa(opensite_reserved_param);
						/************************************/
						var newTab=window.open('about:blank');
						newTab.location.href='index.php?route=product/make&designstudio_id='+designstudio_id+'&access_token='+access_token+'&opensite_reserved_param='+opensite_reserved_param; 
					}
				}
			});
			
		}
		else{
			$('.alert').remove();
			$("div.hover-product").hide();
			$("#notification .modal-footer").hide();
			$("#notification").modal('show');$("#notification .modal-body p").html('请先<font color="#F4740A"><a href="index.php?route=account/login">登录</a></font>或者<font color="#F4740A"><a href="index.php?route=account/register">注册新账号</a></font>后再点击制作');
		}
	},
	'change':function(access_token,design_id,has_confirmed,is_time_over){
		if(has_confirmed==0&&is_time_over==0){
			if(access_token){
				var newTab=window.open('about:blank');
				newTab.location.href='index.php?route=product/make&design_id='+design_id+'&access_token='+access_token+'&action=edit'; 
			}
			else{
				$('.alert').remove();
				$("div.hover-product").hide();
				$("#notification .modal-footer").hide();
				$("#notification").modal('show');$("#notification .modal-body p").html('请先<font color="#F4740A"><a href="index.php?route=account/login">登录</a></font>或者<font color="#F4740A"><a href="index.php?route=account/register">注册新账号</a></font>后再点击制作');
			}
		}else{
			$('.alert').remove();
			$("div.hover-product").hide();
			$("#notification .modal-footer").hide();
			$("#notification").modal('show');$("#notification .modal-body p").html('该作品已定稿或已过期，无法编辑！');
		}
	}
}
	
	//商品详情点击制作functions
var product_details_create={
	'add':function(access_token,opensite_reserved_param,designstudio_id){
		if(access_token){
			
			$(".text-danger").remove();
			$selects=$(".be-selected-option:selected,.be-selected-option:checked");
			/*****判断是否为必选选项*****/
			$options=$(".form-group");
			if($options.length>0){
				var error=0;
				$.each($options,function(){
					if($(this).find($selects).length<=0&&$(this).hasClass("required")){
						$(this).after('<div class="text-danger">此项为必选！<div>');
						error++;
					}
				});
				if(error>0){
					return false;
				}
			}
			opensite_reserved_param_value_copy=opensite_reserved_param;
			product_option_value_id='';
			if($selects.length>0){
				$.each($selects,function(){
					opensite_reserved_param=opensite_reserved_param_value_copy;
					//designstudio_id=$(this).val();
					if($(this).attr("id")!=""&&$(this).attr("id")!="undefined"){
						if(product_option_value_id==''){
							product_option_value_id=$(this).attr("id");
						}else{
							product_option_value_id+=','+$(this).attr("id");
						}
					}
			});	if(product_option_value_id!=''){
				opensite_reserved_param='{"product_id":"'+opensite_reserved_param+'","option":"'+product_option_value_id+'"}';
			}
			}else{
				opensite_reserved_param='{"product_id":"'+opensite_reserved_param+'"}';
			}
			console.log(opensite_reserved_param);
			opensite_reserved_param=window.btoa(opensite_reserved_param);
			/************************************/
			var newTab=window.open('about:blank');
			newTab.location.href='index.php?route=product/make&designstudio_id='+designstudio_id+'&access_token='+access_token+'&opensite_reserved_param='+opensite_reserved_param; 
		}
		else{
			$('.alert').remove();
			$("div.hover-product").hide();
			$("#notification .modal-footer").hide();
			$("#notification").modal('show');$("#notification .modal-body p").html('请先<font color="#F4740A"><a href="index.php?route=account/login">登录</a></font>或者<font color="#F4740A"><a href="index.php?route=account/register">注册新账号</a></font>后再点击制作');
		}
	}
}

// Cart add remove functions	
var cart = {
	'add': function(design_id,product_id,product_option_value_id,quantity, overdue) {
		if(!Number(overdue)==1){
			$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: 'design_id='+design_id+'&product_id=' + product_id + '&option=' + product_option_value_id +'&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			success: function(json) {			
				if (json['redirect']) {
					location = json['redirect'];
				}
				
				if (json['success']) {
					$("div.hover-product").hide();
					$("#notification .modal-footer").show();
					$("#notification").modal('show');
					$("#notification .modal-body p").html(json['success']);	
					
					$('#cart_block #cart_content').load('index.php?route=common/cart/info #cart_content_ajax');
					$('#cart-total').html(json['total']);
				}
			}
		});
		}else{
			$('.alert').remove();
			$("div.hover-product").hide();
			$("#notification .modal-footer").hide();
			$("#notification").modal('show');$("#notification .modal-body p").html('该作品已定稿或已过期，无法购买！');
		}
		
	},
	'update': function(key, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/edit',
			type: 'post',
			data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			success: function(json) {
				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart_block #cart_content').load('index.php?route=common/cart/info #cart_content_ajax');
					$('#cart-total').html(json['total']);
				}			
			}
		});			
	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',			
			success: function(json) {
				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart_block #cart_content').load('index.php?route=common/cart/info #cart_content_ajax');
					$('#cart-total').html(json['total']);
				}
			}
		});			
	}
}

var voucher = {
	'add': function() {
		
	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},      
			complete: function() {
				$('#cart > button').button('reset');
			},			
			success: function(json) {
				$('#cart-total').html(json['total']);
				
				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart_block #cart_content').load('index.php?route=common/cart/info #cart_content_ajax');
					$('#cart-total').html(json['total']);
				}			
			}
		});	
	}
}

var wishlist = {
	'add': function(product_id) {
		$.ajax({
			url: 'index.php?route=account/wishlist/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				$('.alert').remove();
				
				$("div.hover-product").hide();
				$("#notification .modal-footer").hide();
				$("#notification").modal('show');
							
				if (json['success']) {
					$("#notification .modal-body p").html(json['success']);
				}  
				
				if (json['info']) {
					$("#notification .modal-body p").html(json['info']);
				}   

				$('#wishlist-total').html(json['total']);
			}
		});
	},
	'remove': function() {
	
	}
}

var compare = {
	'add': function(product_id) {
		$.ajax({
			url: 'index.php?route=product/compare/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				$('.alert').remove();
							
				if (json['success']) {
					$("div.hover-product").hide();
					$("#notification .modal-footer").hide();
					$("#notification").modal('show');
					$("#notification .modal-body p").html(json['success']);
					$('#compare-total').html(json['total']);
				}   
			}
		});
	},
	'remove': function() {
	
	}
}

/* Agree to Terms */
$(document).delegate('.agree', 'click', function(e) {
	e.preventDefault();
	
	$('#modal-agree').remove(); 
	
	var element = this;
	
    $.ajax({
        url: $(element).attr('href'),
        type: 'get',
        dataType: 'html',
        success: function(data) {
			html  = '<div id="modal-agree" class="modal">';
			html += '  <div class="modal-dialog">';
			html += '    <div class="modal-content">';
			html += '      <div class="modal-header">'; 
			html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
			html += '        <h4 class="modal-title">' + $(element).text() + '</h4>';
			html += '      </div>';
			html += '      <div class="modal-body">' + data + '</div>';
			html += '    </div';
			html += '  </div>';
			html += '</div>';
			
			$('body').append(html);
			
			$('#modal-agree').modal('show');
        }
    });
});

/* Autocomplete */
(function($) {
	function Autocomplete(element, options) {
		this.element = element;
		this.options = options;
		this.timer = null;
		this.items = new Array();

		$(element).attr('autocomplete', 'off');
		$(element).on('focus', $.proxy(this.focus, this));
		$(element).on('blur', $.proxy(this.blur, this));
		$(element).on('keydown', $.proxy(this.keydown, this));

		$(element).after('<ul class="dropdown-menu"></ul>');
		$(element).siblings('ul.dropdown-menu').delegate('a', 'click', $.proxy(this.click, this));
	}

	Autocomplete.prototype = {
		focus: function() {
			this.request();
		},
		blur: function() {
			setTimeout(function(object) {
				object.hide();
			}, 200, this);
		},
		click: function(event) {
			event.preventDefault();

			value = $(event.target).parent().attr('data-value');

			if (value && this.items[value]) {
				this.options.select(this.items[value]);
			}
		},
		keydown: function(event) {
			switch(event.keyCode) {
				case 27: // escape
					this.hide();
					break;
				default:
					this.request();
					break;
			}
		},
		show: function() {
			var pos = $(this.element).position();

			$(this.element).siblings('ul.dropdown-menu').css({
				top: pos.top + $(this.element).outerHeight(),
				left: pos.left
			});

			$(this.element).siblings('ul.dropdown-menu').show();
		},
		hide: function() {
			$(this.element).siblings('ul.dropdown-menu').hide();
		},
		request: function() {
			clearTimeout(this.timer);

			this.timer = setTimeout(function(object) {
				object.options.source($(object.element).val(), $.proxy(object.response, object));
			}, 200, this);
		},
		response: function(json) {
			html = '';

			if (json.length) {
				for (i = 0; i < json.length; i++) {
					this.items[json[i]['value']] = json[i];
				}

				for (i = 0; i < json.length; i++) {
					if (!json[i]['category']) {
						html += '<li data-value="' + json[i]['value'] + '"><a href="#">' + json[i]['label'] + '</a></li>';
					}
				}

				// Get all the ones with a categories
				var category = new Array();

				for (i = 0; i < json.length; i++) {
					if (json[i]['category']) {
						if (!category[json[i]['category']]) {
							category[json[i]['category']] = new Array();
							category[json[i]['category']]['name'] = json[i]['category'];
							category[json[i]['category']]['item'] = new Array();
						}

						category[json[i]['category']]['item'].push(json[i]);
					}
				}

				for (i in category) {
					html += '<li class="dropdown-header">' + category[i]['name'] + '</li>';

					for (j = 0; j < category[i]['item'].length; j++) {
						html += '<li data-value="' + category[i]['item'][j]['value'] + '"><a href="#">&nbsp;&nbsp;&nbsp;' + category[i]['item'][j]['label'] + '</a></li>';
					}
				}
			}

			if (html) {
				this.show();
			} else {
				this.hide();
			}

			$(this.element).siblings('ul.dropdown-menu').html(html);
		}
	};

	$.fn.autocomplete = function(option) {
		return this.each(function() {
			var data = $(this).data('autocomplete');

			if (!data) {
				data = new Autocomplete(this, option);

				$(this).data('autocomplete', data);
			}
		});
	}
})(window.jQuery);