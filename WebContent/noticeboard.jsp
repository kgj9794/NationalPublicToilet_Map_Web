<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
    <title>닫기가 가능한 커스텀 오버레이</title>
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


<!-- Top menu -->
<div class="w3-top">
  <div class="w3-grey w3-xlarge w3-animate-right" style="max-width:100%;margin:auto">
    <a href="http://localhost:8080/Toilet/Ui.jsp" target="_self" class="w3-button w3-padding-16 w3-left w3-animate-right w3-large"  ><i class="material-icons">arrow_back</i></a>
    <a href="http://localhost:8080/Toilet/noticeboardwrite.jsp" target="_self" class="w3-button w3-padding-16 w3-right w3-medium w3-animate-right" " style="text-decoration:none" >등록하기🖍</a>
    <div class="w3-center w3-padding-16 ">게시판📝</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

<li class="w3-bar w3-hover-grey w3-animate-bottom">
  <span onclick="this.parentElement.style.display='none'" 
  class="w3-bar-item w3-button w3-xlarge w3-right">→</span>
  <img src="https://cdn.icon-icons.com/icons2/602/PNG/512/Gender_Neutral_User_icon-icons.com_55902.png" class="w3-bar-item w3-circle" style="width:85px">
  <div class="w3-bar-item">
    <span class="w3-large">감스트</span><br>
    <span>응 감자~</span>
  </div>
</li>
<li class="w3-bar w3-hover-grey w3-animate-bottom">
  <span onclick="this.parentElement.style.display='none'" 
  class="w3-bar-item w3-button w3-xlarge w3-right">→</span>
  <img src="https://cdn.icon-icons.com/icons2/602/PNG/512/Gender_Neutral_User_icon-icons.com_55902.png" class="w3-bar-item w3-circle" style="width:85px">
  <div class="w3-bar-item">
    <span class="w3-large">철구</span><br>
    <span>간장 샤워 하실?</span>
  </div>
</li>
<li class="w3-bar w3-hover-grey w3-animate-bottom">
  <span onclick="this.parentElement.style.display='none'" 
  class="w3-bar-item w3-button w3-xlarge w3-right">→</span>
  <img src="https://cdn.icon-icons.com/icons2/602/PNG/512/Gender_Neutral_User_icon-icons.com_55902.png" class="w3-bar-item w3-circle" style="width:85px">
  <div class="w3-bar-item">
    <span class="w3-large">커멘더지코</span><br>
    <span>다 예상이 됩니다</span>
  </div>
</li>
<li class="w3-bar w3-hover-grey w3-animate-bottom">
  <span onclick="this.parentElement.style.display='none'" 
  class="w3-bar-item w3-button w3-xlarge w3-right">→</span>
  <img src="https://cdn.icon-icons.com/icons2/602/PNG/512/Gender_Neutral_User_icon-icons.com_55902.png" class="w3-bar-item w3-circle" style="width:85px">
  <div class="w3-bar-item">
    <span class="w3-large">테스터훈</span><br>
    <span>쓰읍 미스..</span>
  </div>
</li>
<li class="w3-bar w3-hover-grey w3-animate-bottom">
  <span onclick="this.parentElement.style.display='none'" 
  class="w3-bar-item w3-button w3-xlarge w3-right">→</span>
  <img src="https://cdn.icon-icons.com/icons2/602/PNG/512/Gender_Neutral_User_icon-icons.com_55902.png" class="w3-bar-item w3-circle" style="width:85px">
  <div class="w3-bar-item">
    <span class="w3-large">보겸</span><br>
    <span>다들 ㅂㅇㄹ</span>
  </div>
</li>
  </div>

  
  
 
  
 

    



</body>
</html>
