<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="style/MainStyle.css">
    <link rel="stylesheet" type="text/css" href="style/Theme.css">
    <base href="<%=basePath%>">
    
    <title>main.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <script>
    var musicList = new Array();
   
    function addMusic(musicname,musicAddress){
    	musicList.push([musicname,musicAddress]);
    	document.getElementById("mlLength").innerHTML = musicList.length;
    }
    function nextMusic(audio){
    	if (musicList.length > 0){
    		audio.setAttribute("src", "http://localhost:8080/OnlineMusicPlatform/" + musicList.pop()[1]);
    		audio.play();
    		document.getElementById("mlLength").innerHTML = musicList.length;
    	}
    }
    function musiclistopen(){
    	document.getElementById("floatbox").style.display="flex";
    	var str='';
    	for (var i = 0; i < musicList.length; i++){
    		str = str + '<tr><td>' + musicList[i][0] + '<button class="deletButton" onclick="musicdelet(' + i.toString() + ')"></button></td></tr>';
    	}
    	document.getElementById("musicLists").innerHTML = str;
    }
    function musiclistclose(){
    	document.getElementById("floatbox").style.display="none";
    }
    function musicdelet(index){
    	musicList.splice(index,1);
    	var str='';
    	for (var i = 0; i < musicList.length; i++){
    		str = str + '<tr><td>' + musicList[i][0] + '<button class="deletButton" onclick="musicdelet(' + i.toString() + ')"></button></td></tr>';
    	}
    	document.getElementById("musicLists").innerHTML = str;
    	document.getElementById("mlLength").innerHTML = musicList.length;
    }
  </script>
  
  <body>
    <div id="floatbox" class="back">
      <div class="box">
        <div class="boxbar">
          <p class="ml">MusicList</p>
          <button class="closeButton" onclick="musiclistclose()"></button>
        </div>
        <table id="musicLists">
        </table>
      </div>
    </div>
    <div class="titleBar">
      <div class="center">
        <a href="${pageContext.servletContext.contextPath}/" class="titleBar">RuanKoMusic</a>
        <a href="${pageContext.servletContext.contextPath}/signup.jsp" class="signright">Sign up</a>
        <a class="signor">or</a>
        <a href="${pageContext.servletContext.contextPath}/signin.jsp" class="signleft">${username}</a>
        <form action="/OnlineMusicPlatform/Search" method="post">
          <input type="submit" name="SearchSubmit" class="searchSub" value="">
          <input type="text" name="SearchText" class="searchBox" placeholder="Search" autocomplete="on">
        </form>
      </div>
    </div>
    <div class="playerBar">
      <div class="center">
        <p id="mlLength" class="text">0</p>
        <button class="muslis" onclick="musiclistopen()"></button>
        <audio controls style="display: block; height: 4em; margin: 0em 1.8em 0em 1.8em; width: 35em;" id="mp3" onended="nextMusic(this)" src="${pageContext.servletContext.contextPath}/upload/20180704000001.mp3">
        </audio>
      </div>
    </div>
    <div class="bodycenter">
      <div id="imgchangediv" align="center">
            <img src="${pageContext.servletContext.contextPath}/style/banner-1.png" style="display: block;" id = "imageBanner0"/>
            <img src="${pageContext.servletContext.contextPath}/style/banner-2.png" style="display: none;" id = "imageBanner1"/>
            <img src="${pageContext.servletContext.contextPath}/style/banner-3.png" style="display: none;" id = "imageBanner2"/>
            <img src="${pageContext.servletContext.contextPath}/style/banner-4.png" style="display: none;" id = "imageBanner3"/>
            <img src="${pageContext.servletContext.contextPath}/style/banner-5.png" style="display: none;" id = "imageBanner4"/>
            <div id="imgyuan">
                <font id = "font0"></font>
                <font id = "font1"></font>
                <font id = "font2"></font>
                <font id = "font3"></font>
                <font id = "font4"></font>
            </div>
        </div>
        <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.10.0/jquery.min.js"></script>
        <script>
             var index=0;//每张图片的下标，

	window.onload=function(){       
    	var start=setInterval(autoPlay,1000);//开始轮播，每秒换一张图

    	$('imgchangediv').onmouseover=function(){//当鼠标光标停在图片上，则停止轮播
        	clearInterval(start);
    	}
    	$('imgchangediv').onmouseout=function(){//当鼠标光标停在图片上，则开始轮播
        	start=setInterval(autoPlay,2000);
    	}

    	
    	//当移动到圆圈，则停滞对应的图片
    	var funny = function(i){
        	document.getElementById('font' + i.toString()).onmouseover = function(){
            	changeImg(i)
        	}
    	}
    	for(var i=0;i<5;i++){
        	funny(i);
    	}
	}
	//一轮过后，还是第二轮
	function autoPlay(){
    	if(index>4){
        	index=0;
    	}
    	changeImg(index++);
	}
	//对应圆圈和图片同步
	function changeImg(index){
    	for(i=0;i<5;i++){
    		document.getElementById('imageBanner'+ i.toString()).style.display = 'none';
    		document.getElementById('font' + i.toString()).style.backgroundColor = 'white';
    	}
    	document.getElementById('imageBanner'+ index.toString()).style.display = 'block';
    		document.getElementById('font' + index.toString()).style.backgroundColor = 'grey';
	}
        </script>
      <a href="" class="Lable">RANK</a>
      <p class="line">line1</p>
      <div class = "rankback">
      	<table id="rankTable">
      	  <tr>
      	    <th>HOTEST</th>
      	    <th>LATEST</th>
      	    <th>RECOMMEND</th>
      	  </tr>
      	  <tr>
      	    <td class="firstImgs"><img src="${pageContext.servletContext.contextPath}/${RankList[0][0].cover}" class="firstImg"/></td>
      	    <td class="firstImgs"><img src="${pageContext.servletContext.contextPath}/${RankList[0][1].cover}" class="firstImg"/></td>
      	    <td class="firstImgs"><img src="${pageContext.servletContext.contextPath}/${RankList[0][2].cover}" class="firstImg"/></td>
      	  </tr>
      	  <c:forEach var="rank" items="${RankList}">
      	  <tr>
      	    <td><c:out value="${rank[0].name}"/><a href="/OnlineMusicPlatform/SingleMusic?musicname=${rank[0].name}"><button class="musicbutton"></button></a><button class="addbutton" onclick="addMusic('${rank[0].name}','${rank[0].musicurl}')"></button></td>
      	    <td><c:out value="${rank[1].name}"/><a href="/OnlineMusicPlatform/SingleMusic?musicname=${rank[1].name}"><button class="musicbutton"></button></a><button class="addbutton" onclick="addMusic('${rank[1].name}','${rank[1].musicurl}')"></button></td>
      	    <td><c:out value="${rank[2].name}"/><a href="/OnlineMusicPlatform/SingleMusic?musicname=${rank[2].name}"><button class="musicbutton"></button></a><button class="addbutton" onclick="addMusic('${rank[2].name}','${rank[2].musicurl}')"></button></td>
      	  </tr>
      	  </c:forEach>
      	</table>
      </div>
    </div>
  </body>
</html>
