<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ManageMusic</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="style/MainStyle.css">
    <link rel="stylesheet" type="text/css" href="style/Theme.css">
    <link rel="stylesheet" type="text/css" href="style/Manage.css">

  </head>
  
  <body>
    <div class="titleBar">
      <div class="center">
        <a href="${pageContext.servletContext.contextPath}/GetRankList" class="titleBar">RuanKoMusic</a>
        <form action="/OnlineMusicPlatform/AdmSearch" method="post">
          <input type="submit" name="SearchSubmit" class="searchSub2" value="">
          <input type="text" name="SearchText" class="searchBox" placeholder="Search" autocomplete="on">
        </form>
      </div>
    </div>
     <div class="centerWrapper">
        <div class = "name">
        Please modify the song information
        </div>
        <div class = "fillWrapper">
        <form method="post" enctype="multipart/form-data" action="/OnlineMusicPlatform/ManageMusic">
          <input type="text" name="id" style="display: none" value="${mbmd.id}">
          <div class = "fill">
            <label>Song name</label>
            <input type="text" name="name" value="${mbmd.name}">
          </div>
          <div class = "fill">
            <label>Real name</label>
            <input type="text" name="realname" value="${mbmd.realname}">
          </div>
          <div class = "fill">
            <label>Artist</label>
            <input type="text" name="artist" value="${mbmd.artist}">
          </div>
          <div class = "fill">
             <label>Album name</label>
             <input type="text" name="album" value="${mbmd.album}">
          </div>
          <div class = "fill">
            <label>zone</label>
            <input type="text" name="zone" value="${mbmd.zone}">
          </div>
          <div class = "fill">
            <label>Publish date</label>
            <input type="text" name="publishdate" value="${mbmd.publishdate}">
          </div>
          <input type="submit" class = "submit-one" value = "SUBMIT">
        </form>
        </div>
      </div>
  </body>
</html>
