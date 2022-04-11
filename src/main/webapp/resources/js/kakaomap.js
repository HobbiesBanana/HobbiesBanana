
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = {
              center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
              level: 3, // 지도의 확대 레벨
              mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
          }; 
      // 지도를 생성한다 
      var map = new kakao.maps.Map(mapContainer, mapOption); 
      // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(37.56682, 126.97865), // 마커의 좌표
          map: map // 마커를 표시할 지도 객체
      });

      document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.querySelector("input[name=locationDetail]").focus(); //상세입력 포커싱
            }
        }).open();
    });