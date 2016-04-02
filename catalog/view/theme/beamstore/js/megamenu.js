var active = false;
var hover = false;
var megamenuresponsive = false;
$(document).ready(function() {
	if(responsive_design == 'yes' && $(window).width() < 960) {
		megamenuresponsive = true;
	}
	
	$("ul.megamenu li .sub-menu .content .hover-menu ul li").hover(function () {
		$(this).children("ul").show();
	},function () {
		$(this).children("ul").hide();
	});
	
	$('.close-menu').on('click', function () {
		$(this).parent().removeClass("active");
		return false;
	});
	
	$('.open-menu').on('click', function () {
		$(this).parent().addClass("active");
		megamenuresponsive = true;
		return false;
	});
	
	$("ul.megamenu > li.click .content a").click(function () {
		window.location = $(this).attr('href');
	});
		
	$("ul.megamenu > li.hover").hover(function () {
		if(megamenuresponsive == false) {
			active = $(this);
			hover = true;
			$("ul.megamenu > li").removeClass("active");
			$(this).addClass("active");
			$(this).children(".sub-menu").css("right", "auto");	
			var $whatever        = $(this).children(".sub-menu");
			var ending_right     = ($(window).width() - ($whatever.offset().left + $whatever.outerWidth()));
			var $whatever2       = $("ul.megamenu");
			var ending_right2    = ($(window).width() - ($whatever2.offset().left + $whatever2.outerWidth()));
			if(ending_right2 > ending_right) {
				$(this).children(".sub-menu").css("right", "0");
			}
		}
	},function () {
		if(megamenuresponsive == false) {
			var rel = $(this).attr("title");
			hover = false;
			if(rel == 'hover-intent') {
				var hoverintent = $(this);
				setTimeout(function (){
					if(hover == false) {
						$(hoverintent).removeClass("active");
					}
				}, 500);
			} else {
				$(this).removeClass("active");
			}
		}
	});
	
	$("ul.megamenu > li.click").click(function () {
		if($(this).removeClass("active") == true) { return false; }
		active = $(this);
		hover = true;
		$("ul.megamenu > li").removeClass("active");
		$(this).addClass("active");
		$(this).children(".sub-menu").css("right", "auto");
		var $whatever        = $(this).children(".sub-menu");
		var ending_right     = ($(window).width() - ($whatever.offset().left + $whatever.outerWidth()));
		var $whatever2       = $("ul.megamenu");
		var ending_right2    = ($(window).width() - ($whatever2.offset().left + $whatever2.outerWidth()));
		if(ending_right2 > ending_right) {
			$(this).children(".sub-menu").css("right", "0");
		}
		return false;
	});
	
	$("#megaMenuToggle").click(function () {
		if($(this).removeClass("active") == true) {
			$(".horizontal .megamenu-wrapper").stop(true, true).animate({ height:"hide" },200);
		} else {
			$(".horizontal .megamenu-wrapper").stop(true, true).animate({ height:"toggle" },200);
			$(this).addClass("active");
		}
		return false;
	});
	
	$('html').on('click', function () {
		$("ul.megamenu > li.click").removeClass("active");
	});
});

$(window).resize(function() {
	megamenuresponsive = false;
	
	if(responsive_design == 'yes' && $(window).width() < 960) {
		megamenuresponsive = true;
	}
});