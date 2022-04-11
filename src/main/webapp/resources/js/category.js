
	// 클릭시 색상변경
let div2 = document.getElementsByClassName("div2");

     function handleClick(event) {

        if (event.target.classList[1] === "clicked") {
          event.target.classList.remove("clicked");
        } else {
          for (let i = 0; i < div2.length; i++) {
            div2[i].classList.remove("clicked");
          }

          event.target.classList.add("clicked");
        }
      }

      function init() {
        for (let i = 0; i < div2.length; i++) {
          div2[i].addEventListener("click", handleClick);
        }
      }

      init();
      
			//손가락 표시      
$(".div2").css('cursor','pointer');
