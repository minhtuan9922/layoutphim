// JavaScript Document
window.fbAsyncInit = function() {
FB.init({
  appId      : '458308631171598',
  xfbml      : true,
  version    : 'v2.9'
});
FB.AppEvents.logPageView();
};

(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.12&appId=458308631171598&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

//ajax tìm kiếm
$(document).ready(function(){
	$('#timkiem').keyup(function() {
		$('.ketqua').show('fast');
		var tukhoa = $('#timkiem').val();
		$(window).click(function() {
			$('.ketqua').hide();
		});
	//	$.ajax({
	//		method:"POST",
	//		url:"<?=base_url('timkiem'); ?>",
	//		data:{tukhoa:tukhoa},
	//		success: function(result)
	//		{
	//			console.log(result);
	//			$('#result').html(result);
	//		}
	//	});
	});
	
//	$(".col-6").hide();
//	var phim_moi = $("#phim_moi").offset().top;
//	var height = $(window).height(); console.log(height);
//	$(window).bind('scroll', function() {
//		if (($(window).scrollTop() + height - 100) > phim_moi) {
//			$(".col-6").first().show("fast", function showNext() {
//				$(this).next(".col-6").show("fast", showNext);
//			});
//		}
//		else {
//			$(".col-6").hide(1000);
//		}
//	});
});


    $(window).on("load resize",function(e){
//       $(document).ready(function(){
           var menu = $('#menu').height();
           var header = $('#header').height();
           var node = $('#node').height();
           var row = $('#row-cus').height();
           var menu_tabs = $('#menu-tabs').height();
    //       var join = $('#join').height();
           var footer = $('#footer').height();
           var height = $(window).height();
           var main_height = height - (menu + header + node +footer + footer + 74);
           $('#main').css('min-height', main_height);
           $(window).bind('scroll', function() {
           var navHeight = menu + header + node + row + menu_tabs + 20;
                 if ($(window).scrollTop() > navHeight) {
                     $('#menu-tabs').addClass('navbar-fixed-top navbar-box');
                 }
                 else {
                     $('#menu-tabs').removeClass('navbar-fixed-top navbar-box');
                 }
            });
//        });
    });
$(window).scroll(function() {
	$('.menu-left').height('100vh');
});
