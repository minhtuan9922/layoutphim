// JavaScript Document

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

