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
  <a href="http://localhost:8080/Toilet/start.jsp" target="_self" onclick="w3_close()" class="w3-bar-item w3-button">초기화면으로➰</a>
  <a href="http://localhost:8080/Toilet/Ui.jsp" target="_self" onclick="w3_close()" class="w3-bar-item w3-button ">화장실 보기🌎</a>
  <a href="http://localhost:8080/Toilet/search.jsp" target="_self" onclick="w3_close()" class="w3-bar-item w3-button ">화장실 찾기🔍</a>
  <a href="http://localhost:8080/Toilet/Ver.jsp" onclick="w3_close()" class="w3-bar-item w3-button">버전⚡</a>
  <a href="http://localhost:8080/Toilet/money.jsp" onclick="w3_close()" class="w3-bar-item w3-button">후원하기💸</a>
  <a href="http://localhost:8080/Toilet/about.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-text-blue">대하여..❔</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-blue w3-animate-top w3-xlarge" style="max-width:100%;margin:auto">
    <div class="w3-button w3-padding-16 w3-left w3-animate-top" onclick="w3_open()">☰</div>
    <a href="http://localhost:8080/Toilet/noticeboard.jsp" target="_self" class="w3-button w3-right w3-padding-16 w3-medium w3-animate-top" " style="text-decoration:none" >게시판📝</a>
    <div class="w3-center w3-padding-16 ">대하여..❔</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  
 
<div class="w3-container w3-animate-bottom ">
  <h2>팔조비빔면</h2>
  <p>박상우 김건주 이재문 최재은</p>
  <p class="w3-wide">Powerd by KaKao Map api, eclipse..</p>
</div>
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
