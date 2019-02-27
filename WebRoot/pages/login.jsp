<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html >
  <head>
    <base href="<%=basePath%>">
    
    <title>Flappy Bird</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- <link type = "text/css" rel = "stylesheet" href = "css/login.css"/> -->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
	
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  	<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	<script type = "text/javascript" src = "js/jquery-2.2.4.js"></script>
	<script type = "text/javascript" src = "js/set.js"></script>
	<script type = "text/javascript" src = "js/login.js"></script>
	
	<style>
	body{
		background: linear-gradient(white, lightblue);
	}
	</style>
	</head>
  
  <body>
    <!-- <canvas id = "can1"></canvas> -->
    
    <div class="jumbotron " style = "background-color:#70C5CE">
  		<div class="container">
  			<img src = "img/bird.jpg" style = "height:80px;"/>
    		<h1>Flappy Bird</h1> 
  		</div>
	</div>
    
    <div class="container">
   	<form role="form" id = "form1" method = "post" action = "PlayerServlet?method=login">
   		<h1>请登陆</h1>
   		<hr />
   			<div class="form-inline">
   				<label for="name">账号：</label>
	   			<%-- <input type = "text" id = "playerId" name = "playerId" autofocus placeholder = "请输入账号" value = "${sessionScope.playerId}" /> --%>
	   			<input type="text" class="form-control" id="playerId" placeholder="请输入账号" name = "playerId" autofocus value = "${sessionScope.playerId}"/>
	   			&nbsp<span style = "color:red;"></span>
  			</div>
  			</br>
  			<div class="form-inline">
  				<label for="pwd">密码：</label>
	   			<!-- <input type = "password" id = "playerPassword" name = "playerPassword" placeholder = "请输入密码(6-16位)" /> -->
	   			<input type = "password" class="form-control" id = "playerPassword" name = "playerPassword" placeholder = "请输入密码(6-16位)" />
	   			&nbsp<span style = "color:red;"></span>
	   		</div>
	   		</br>
	   		<div style = " overflow:hidden; text-align:center; margin-left:0px;">
	   			<input type="button" class="btn btn-info" value=" 登 录 ">&nbsp;&nbsp;
	   			<input type = "button" class="btn btn-info" value = " 注 册 ">&nbsp;&nbsp;
	   			<input type = "reset" class="btn btn-light" value = " 清 空 ">
	   		</div>
   	</form>
   	</div>
   	<%-- <div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<!-- <h3 style="color:#999;font-family:'幼圆'; font-size:30px">
                        	社团之家欢迎您</h3> -->
						<form id = "form1" method = "post" action = "PlayerServlet?method=login">
							<div class="input_outer">
								<span class="u_user"></span>
								<input id = "playerId" name="playerId" class="text" autofocus value = "${sessionScope.playerId}" style="color: #FFFFFF !important" type="text" placeholder="请输入账号" />
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="playerPassword" id = "playerPassword" type = "password" class="text" style="color: #FFFFFF !important; position:absolute;" placeholder="请输入密码(6-16位)" />
							</div>
							<div class="mb2"><!--<a class="act-but submit" href="javascript:;" style="color: #FFFFFF">登&nbsp;&nbsp;录</a>-->
								<input class="act-but submit" type="button" style="color: #FFFFFF" value="登录"></input>&nbsp;&nbsp;
								<input class="act-but submit" type="button" style="color: #FFFFFF" value="注册"></input>&nbsp;&nbsp;
								<input class="act-but submit" type="reset" style="color: #FFFFFF" value="清空"></input>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div> --%>
   	
   	
  </body>
</html>
