<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" type="text/css" href="css/register.css">
	
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  	<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	<script type = "text/javascript" src = "js/jquery-2.2.4.js"></script>
	<script type = "text/javascript" src = "js/set.js"></script>
	<script type = "text/javascript" src = "js/register.js"></script>
	<style>
		body{
	  		background:url("img/fresh.gif") no-repeat;
	  		background-size: 100%;
		}
	</style>
	
  </head>
  
  <body>
    <!-- <canvas id = "can1"></canvas> -->
    
    <!-- <form id = "form1" method = "post" action = "PlayerServlet?method=register">
    	<h1>注册新玩家</h1>
    	<hr />
    	
    	<ul>
	   		<li>账号：<input type = "text" id = "playerId" name = "playerId" autofocus placeholder = "请输入账号" /><span>*</span></li>
	   		<li>密码：<input type = "password" id = "playerPassword" name = "playerPassword" placeholder = "请输入密码(6-16位)" /><span>*</span></li>
	   		<li>确认密码：<input type = "password" id = "playerPassword1" placeholder = "请输入密码(6-16位)" /><span>*</span></li>
	   		<li>昵称：<input type = "text" id = "playerName" name = "playerName" placeholder = "请输入昵称" /><span>*</span></li>
	   		<li>
	   			性别：<input type = "radio" name = "sex" />男
	   			<input type = "radio" name = "sex" />女
	   		</li>
	   		<li>年龄：<input type = "number" id = "age" /></li>
	   		<li>电子邮箱：<input type = "text" id = "email" /></li>
	   		<li style = "text-align:center; margin-left:0px;">
	   			<input type = "button" value = " 注 册 ">&nbsp;&nbsp;
	   			<input type = "button" value = " 取 消 ">&nbsp;&nbsp;
	   			<input type = "reset" value = " 清 空 ">
	   		</li>
	   	</ul> -->
	   	<div class="jumbotron " style = "background-color:#70C5CE">
  		<div class="container">
  			<img src = "img/bird.jpg" style = "height:80px;"/>
    		<h1>注册新玩家</h1> 
  		</div>
		</div>
	<div id = "container">
		
    	<form  id = "form1" method = "post" action = "PlayerServlet?method=register">
    		<div class="form-group">
      			<label for="user">账号：</label>
      			<input type="text" class="form-control" name = "playerId" id="playerId" placeholder="请输入账号" autofocus><span></span>
      			<br/>
    		</div>
    		
    		<div class="form-group">
      			<label for="pwd">密码:</label>
      			<input type="password" class="form-control" name = "playerPassword" id="playerPassword" placeholder="请输入密码(6-16位)"><span></span>
      			<br/>
    		</div>
    		<div class="form-group">
      			<label for="pwd">确认密码:</label>
      			<input type="password" class="form-control" id="playerPassword1" placeholder="请输入密码(6-16位)"><span></span>
      			<br/>
    		</div>
    		<div class="form-group">
      			<label >昵称:</label>
      			<input type="text" class="form-control" name = "playerName" id="playerName" placeholder="请输入昵称"><span></span>
      			<br/>
    		</div>
    		<p>性别：</p>
    		<div class="radio">
      			<label><input type="radio" name="optradio">男</label>
    		</div>
    		<div class="radio">
      			<label><input type="radio" name="optradio">女</label>
    		</div>
    		<input type = "button" class="btn btn-primary" value = " 注 册 ">&nbsp;&nbsp;&nbsp;
    		<input type = "button" class="btn btn-primary" value = " 取 消 ">&nbsp;&nbsp;&nbsp;
    		<input type = "reset" class="btn btn-light" value = " 清 空 ">
    	</form>
	<br/>
	   	<br/><br/>
	</div>
	   	
	   	
    </form>
  </body>
</html>
