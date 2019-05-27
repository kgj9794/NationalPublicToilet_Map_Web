<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title></title>
<meta charset="UTF-8">
    <title></title>
    <style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<body>

<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button w3-black"><i class="material-icons">arrow_back</i></a>
  <a href="http://localhost:8080/Toilet/start.jsp" target="_self" onclick="w3_close()" class="w3-bar-item w3-button 3">초기화면으로➰</a>
  <a href="http://localhost:8080/Toilet/Ui.jsp" target="_self" onclick="w3_close()" class="w3-bar-item w3-button w3-text-red">화장실 보기🌎</a>
  <a href="http://localhost:8080/Toilet/search.jsp" target="_self" onclick="w3_close()" class="w3-bar-item w3-button">화장실 찾기🔍</a>
  <a href="http://localhost:8080/Toilet/Ver.jsp" onclick="w3_close()" class="w3-bar-item w3-button">버전⚡</a>
  <a href="http://localhost:8080/Toilet/money.jsp" onclick="w3_close()" class="w3-bar-item w3-button">후원하기💸</a>
  <a href="http://localhost:8080/Toilet/about.jsp" onclick="w3_close()" class="w3-bar-item w3-button">대하여..❔</a>
</nav>

<!-- Top menu -->
<div class="w3-top ">
  <div class="w3-red w3-animate-top w3-xlarge " style="max-width:100%;margin:auto">
    <div class="w3-button w3-padding-16 w3-left w3-animate-top" onclick="w3_open()">☰</div>
    <a href="http://localhost:8080/Toilet/noticeboard.jsp" target="_self" class="w3-button w3-right w3-padding-16 w3-medium w3-animate-top" " style="text-decoration:none" >게시판📝</a>
    <div class="w3-center w3-padding-16 ">화장실 보기🌎</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  
 
    <div id="map" class="w3-animate-bottom" style="width:100%;height:600px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f8734455c11a843c6a3269ffe4f3a984"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도의 중심좌표
    mapOption = { 
        center: new daum.maps.LatLng(36.799433, 127.074845), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    }; 

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도에 마커를 표시합니다 
var marker1 = new daum.maps.Marker({
    map: map, 
    position: new daum.maps.LatLng(36.799433, 127.074845)
    
});
var marker2 = new daum.maps.Marker({
    map: map, 
    position: new daum.maps.LatLng(36.798787, 127.079000)
});
var marker3 = new daum.maps.Marker({
    map: map, 
    position: new daum.maps.LatLng(36.798744, 127.071000)
});
var marker4 = new daum.maps.Marker({
    map: map, 
    position: new daum.maps.LatLng(36.797438, 127.076932)
});
// 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var content1 = 
	'<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            1번 화장실' + 
            '            <div class="close" onclick="closeOverlay1()" title="닫기"></div>' + //closeOverLay()
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://t1.daumcdn.net/news/201902/20/yonhap/20190220101903913gjip.jpg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">충청남도 아산시 탕정면</div>' + 
            '                <div class="jibun ellipsis">선문로 221번길 70</div>' + 
            '                <div><a href="http://localhost:8080/Test/NewFile.html" target="_self" class="link">댓글보기 및 청결상태</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';
var content2 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            2번 화장실' + 
            '            <div class="close" onclick="closeOverlay2()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://t1.daumcdn.net/news/201806/11/fnnewsi/20180611112709275ryan.jpg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">충청남도 아산시 탕정면</div>' + 
            '                <div class="jibun ellipsis">선문로 221번길 70-2</div>' + 
            '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">댓글보기 및 청결상태</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';
            var content3 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            3번 화장실' + 
            '            <div class="close" onclick="closeOverlay3()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="http://www.viva100.com/mnt/images/file/2018y/01m/14d/2018011401001094400050911.jpg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">충청남도 아산시 탕정면</div>' + 
            '                <div class="jibun ellipsis">선문로 221번길 70-3</div>' + 
            '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">댓글보기 및 청결상태</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';
            var content4 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            4번 화장실' + 
            '            <div class="close" onclick="closeOverlay4()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="http://cfile201.uf.daum.net/image/99E030335981572202A2FC" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">충청남도 아산시 탕정면</div>' + 
            '                <div class="jibun ellipsis">선문로 221번길 70-4</div>' + 
            '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">댓글보기 및 청결상태</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';
           
// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay1 = new daum.maps.CustomOverlay({
	content: content1,
    map: "",
    position: marker1.getPosition()  
});

var overlay2 = new daum.maps.CustomOverlay({//변수명
    content: content2,
    map: "",
    position: marker2.getPosition()       
});
var overlay3 = new daum.maps.CustomOverlay({//변수명
    content: content3,
    map: "",
    position: marker3.getPosition()       
});
var overlay4 = new daum.maps.CustomOverlay({//변수명
    content: content4,
    map: "",
    position: marker4.getPosition()       
});



// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
daum.maps.event.addListener(marker1, 'click', function() {
	overlay1.setMap(map);
});
daum.maps.event.addListener(marker2, 'click', function() {//마커 1
    overlay2.setMap(map);
});
daum.maps.event.addListener(marker3, 'click', function() {//마커 1
    overlay3.setMap(map);
});
daum.maps.event.addListener(marker4, 'click', function() {//마커 1
    overlay4.setMap(map);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay1() {
    overlay1.setMap(null);     
}
function closeOverlay2() {//오버레이 1
    overlay2.setMap(null);     
}
function closeOverlay3() {//오버레이 1
    overlay3.setMap(null);     
}
function closeOverlay4() {//오버레이 1
    overlay4.setMap(null);     
}

</script>
  </div>

  
  
 <script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>
  
 

    



</body>
</html>
