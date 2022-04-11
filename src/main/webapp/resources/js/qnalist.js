$("[data-url]").click(function(){
	let url = $(this).attr("data-url");
	location.href = url;
});