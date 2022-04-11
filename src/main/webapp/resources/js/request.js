$(".btn").click(function(){
    let result = confirm("신청하시겠습니까?");
    if(result) {
        location.replace('main.html');
    }else{
    }
});