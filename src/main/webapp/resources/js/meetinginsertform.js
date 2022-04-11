let countText = $(".count");

$(".minus-btn").click(function(){
  let num = parseInt($(".count").attr("value"));
  if(num > 0){
    num--;
    $(".count").attr("value",num);
  }
});

$(".plus-btn").click(function(){
  let num = parseInt($(".count").attr("value"));
    num++;
    $(".count").attr("value",num);
});