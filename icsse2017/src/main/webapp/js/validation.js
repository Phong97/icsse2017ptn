//Đặt sự kiện cho các button trong Form LOGIN, LOGOUT
	$(document).ready(function(){
		
			  $(".btn").click(function(){
				  $(".carousel-indicators").css("display","none");
			 });
			  $(".close").click(function(){
				  $("#id01").css("display","none");
				  $(".carousel-indicators").css("display","block");
			 });
			
			  $(".formreg").click(function(){
				  $("#id01").css("display","none");
			 });
			  $(".formlogin").click(function(){
				   $("#id01").css("display","block");
			 });
		
		var modal = document.getElementById('id01');
		
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
				$("#announce").css("display","none");
        	 	$("#announce2").css("display","none");
        	 	$("#username_login").css("border","solid 1px #ccc");
        		$("#password_login").css("border","solid 1px #ccc");
			}
			else
				if(event.target == modal2) {
				modal2.style.display = "none";
				$("#announce1").css("display","none");
        	 	$("#announce2").css("display","none");
        	 	$("#username_reg").css("border","solid 1px #ccc");
        	 	$("#password_reg").css("border","solid 1px #ccc");
			}
		}
		//END 
	});

	function doimau(){
		document.getElementById('about').style.background="#0082c8";
	}
