$(function () {
    var pull = $('#pull');
    btnClose = $('#btnClose');
    menu = $('.navx > ul');
    navx = $('.navx');
    menuli = $('.navx > ul > li');
    menuli_ul = $('.navx > ul > li>ul');
	$(".closeIco").hide();
    menuHeight = menu.height();
	var btnOpenS = $('.openIco');
	var btnCloseS= $('.closeIco');

    $(btnOpenS).on('click', function (e) {
        e.preventDefault();
        menu.slideToggle();
		btnCloseS.show();
		btnOpenS.hide();
    });
	$(btnCloseS).on('click', function (e) {
        e.preventDefault();
        menu.slideToggle();
 		btnOpenS.show();
		btnCloseS.hide();
    });
    $(btnClose).on('click', function (e) {
        e.preventDefault();
        menu.slideToggle();
    });
    var w1 = $(window).width();
    if (w1 < 768) {
        navx.addClass("navxMb");
        menuli_ul.addClass('dropdown');
        menuli.on('click', function () {
		if ($(this).find('ul.dropdown').is(':hidden')) {
			$(this).find('ul.dropdown').slideToggle();
			$(this).find('ul.dropdown').addClass('open');
		}
		else {
			$(this).find('ul.dropdown').slideToggle();
			//$(".closeIco").hide();
			return;
		}
        });
    }
    $(window).resize(function () {
        var w = $(window).width();
        if (w < 768) {
        }

    });
	$( ".navx>ul>li" ).has( "ul" ).addClass("parent");
});



$(function () {
	//$( ".navy > ul > li" ).has( "ul" ).addClass("parent");
	$( ".navx >ul > li> ul>li:first-child" ).append("<span class='caretB'></span>");
	$( ".navx ul ul").addClass("wow fadeInUp");
	$( ".product, .media, .cate, .ser, .videos .col6, .contact .col5 p").addClass("wow fadeInUp");
	$( ".navy > ul > li" ).prepend("<i class='fa fa-dot-circle-o'></i>");
	$( ".otherNews ul li" ).prepend("<i class='fa fa-angle-right'></i>");
	$( ".news .media" ).prepend("<i class='fa fa-caret-right'></i>");
	$( ".hotline-httt" ).prepend("<i class='icon-hl-httt'></i>");
	
});
 
$( ".navx li h3").addClass("lv1");
$( ".navx li h4").addClass("lv2");
$( ".navx li h5").addClass("lv3");

$( ".navy li h3").addClass("lv1");
$( ".navy li h4").addClass("lv2");
$( ".navy li h5").addClass("lv3");


$("body").append(" <a href='#top' id='toTop'> <i class='fa fa-chevron-up'></i></a> ");
$(function() {
	$("#toTop").scrollToTop(1000);
});
 
//popup search
 
 var notH = 1,
$pop = $('.popupSearch').hover(function () { notH ^= 1; });

  $(document).on('mouseup keyup', function (e) {
	  if (notH || e.which == 27) $pop.stop().hide();
  });
  $('.popupSearch').hide();
$(document).ready(function () {
  $('.trigger').click(function () {
	  $('.popupSearch').slideToggle();  
  });
  $('.btn-close').click(function () {
	  $('.popupSearch').slideUp('fast');
  });
}); 

 
//slider nivo 2
 $(window).load(function() {
	$('#slider').nivoSlider({
	});
});
 
	var h=$(".inner-media-box").height();
	$( ".btn-news" ).hover(function() {
		 
		$(this).parent().children(".bg-hover").height(500);
 
});

$(document).ready(function () {
	var w2 = $(window).width();
    if (w2 > 768) {
            $(".sticky").sticky({ topSpacing: 40 });
				}
});