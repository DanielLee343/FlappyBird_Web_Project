<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Flappy Bird</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  	<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	<script type = "text/javascript" src = "js/jquery-2.2.4.js"></script>
	<script type = "text/javascript" src = "js/set.js"></script>
	<script type = "text/javascript" src = "js/main.js"></script>
	<style>
		body{
	  		background:url("img/fresh.gif") no-repeat;
	  		background-size: 100%;
		}
	</style>
  </head>
  
  <body >
    <canvas id = "can1"></canvas>
   	<form id = "form1" method = "post" action = "pages/choose.jsp" >
   		<h1>Welcome,${sessionScope.player.playerName}!</h1>
   		<hr />
   		<ul>
   			<li><input type = "submit" id = "playing" value = "开始游戏" class="btn btn-primary btn-lg"/></li>
   			<li><input type = "button" id = "showInfo" value = "操作说明" class="btn btn-outline-primary"/></li>
	   		<li><input type = "button" id = "list" value = "排行榜" class="btn btn-outline-success"/></li>
	   		<li><input type = "button" id = "check" value = "查看资料" class="btn btn-outline-info"/></li>
	   		<li><input type = "button" id = "cancel" value = "注销" class="btn btn-outline-primary"/></li>
	   		<li><input type = "button" id = "exit" value = "退出" class="btn btn-outline-dark"/></li>
	   	</ul>
   	</form>
   	<form id = "form2" method = "post" action = "PlayerServlet?method=check">
   		<h2>我的资料</h2>
   		<hr />
   		<ul>
   			<%-- <li>账号：<input type = "text" id = "playerId" name = "playerId" value = "${sessionScope.player.playerId}" readonly /></li> --%>
   			<li>账号：<input type="text" id = "playerId" name = "playerId" value = "${sessionScope.player.playerId}" readonly class="form-control" /></li>
   			<li>密码：<input type = "password" id = "playerPassword" name = "playerPassword" value = "${sessionScope.player.playerPassword}" class="form-control"/><span></span></li>
   			<li style = "display:none">确认密码：<input type = "password" id = "playerPassword1" value = "${sessionScope.player.playerPassword}" class="form-control"/><span></span></li>
   			<li>昵称：<input type = "text" id = "playerName" name = "playerName" value = "${sessionScope.player.playerName}" class="form-control"/><span></span></li>
   			<li>最高分：<input type = "text" id = "pb" name = "pb" value = "${sessionScope.player.pb}" readonly class="form-control"/></li>
   			<li style = "margin-left:100px;"><input type = "submit" id = "sure" value = "确定" class="btn btn-outline-secondary"/></li>
   		</ul>
   	</form>
   	<form id = "form3" method = "post">
	   	<h2>排行榜</h2>
	   	<hr />
	   	<table class="table table-striped">
	   		<thead class="thead-light">
	   			<tr>
			        <th>名次</th>
        			<th>账号</th>
        			<th>昵称</th>
        			<th>最高分</th>
      			</tr>
	   		</thead>
	   		<tbody>
	   			<c:forEach var = "player" items = "${sessionScope.playerList}" varStatus = "vs">
	   				<tr>
		   				<td>第${vs.index+1}名</td>
		   				<td>${player.playerId}</td>
		   				<td>${player.playerName}</td>
		   				<td>${player.pb}</td>
	   				</tr>
	   			</c:forEach>
	   		</tbody>
	   	</table>
	   	<div id = "button">
	   		<input type = "button" value = "确定" class="btn btn-outline-secondary"/>
	   	</div>
   	</form>
   	<form id = "form4" method = "post">
   		<h2>操作说明</h2>
   		<hr/>
   		<br/>
   		<div id="imgCenter">
   			<img src = "img/mouse.jpg" style = "height:140px;"/>
   			<img src = "img/info.png" style="height:140px;"/>
   		</div>
   		<p style="font-size:20px;font-family:微软雅黑">点击鼠标左键控制小鸟跳跃，使其穿过柱子中间的空隙，碰到柱子、屏幕顶部和底部则游戏结束，加油吧！</p>
   		<div id = "button">
   			<input type = "button" value = "确定" class="btn btn-outline-secondary">
   		</div>
   	</form>
  </body>
</html>
