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
    <base href="<%=basePath%>">
    
    <title>Adm</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="style/Theme.css">
	<link rel="stylesheet" type="text/css" href="style/MainStyle.css">
	<link rel="stylesheet" type="text/css" href="style/Manage.css">

  </head>
  
  <body>
    <div class="titleBar">
      <div class="center">
        <a href="${pageContext.servletContext.contextPath}/" class="titleBar">RuanKoMusic</a>
        <form action="/OnlineMusicPlatform/AdmSearch" method="post">
          <input type="submit" name="SearchSubmit" class="searchSub2" value="">
          <input type="text" name="SearchText" class="searchBox" placeholder="Search" autocomplete="on">
        </form>
      </div>
    </div>
    
    <div class="centerWrapper">
      <div class = "name">
        Please enter the song information
      </div>
      <div>
        <form method="post" enctype="multipart/form-data" action="/OnlineMusicPlatfrom/FileUpload">
          <div class = "fill">
            <label>Select the song file</label>
            <input type="file" name="FileName">
          </div>
          <div class = "fill">
            <label>Song name</label>
            <input type="text" name="name" placeholder="Name" autocomplete="on">
          </div>
          <div class = "fill">
            <label>Real name</label>
            <input type="text" name="realname" placeholder="Realname" autocomplete="on">
          </div>
          <div class = "fill">
            <label>Artist</label>
            <input type="text" name="artist" placeholder="Artist" autocomplete="on">
          </div>
          <div class = "fill">
             <label>Album name</label>
             <input type="text" name="album" placeholder="Album" autocomplete="on">
          </div>
          <div class = "fill">
            <label>Select the Lrc file</label>
            <input type="file" name="Lrc">
          </div>
          <div class = "fill">
            <label>zone</label>
            <input type="text" name="zone" placeholder="Zone" autocomplete="on">
          </div>
          <div class = "fill">
            <label>Publish date</label>
            <input type="text" name="publishdate" placeholder="Publish-Date xxxx/xx/xx" autocomplete="on">
          </div>
          <div class = "fill">
            <label>Select the Cover file</label>
            <input type="file" name="Cover">
          </div>
          <div class = "fill">
            <label>Select the Artist_Photo file</label>
            <input type="file" name="Artist_Photo">
          </div>
          <div>
            <label>Please select the label</label>
            <select>
              <option value="none"></option>
              <option value="none"></option>
              <option value="none"></option>
              <option value="none"></option>
              <option value="none"></option>
              <option value="none"></option>
            </select>
          </div> 
           
          <input type="submit" class = "submit">
        </form>
      </div>
     
    </div>
  </body>
</html>
