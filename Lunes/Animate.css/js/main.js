$(document).ready(function(){
	$("#text").hide();
	setTimeout(function(){
		$("#box2").addClass("moveCenter");

		$('#box2').on('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
			$("#text").show();
			$("#text").addClass("flash");
		});
	}, 1000);
})