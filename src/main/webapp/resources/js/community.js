let btn = false;

$(".btn").click(function(){

if (btn == false) {
	$(this).css('background-color','#d4ca68'); 
	btn = true;
 } else {
	$(this).css('background-color','white'); 
	btn = false;

		}

});

