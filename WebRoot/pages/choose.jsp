<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Flappy Bird</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
	<link rel="stylesheet" type="text/css" href="css/build.css">
	
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  	<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  	<script type = "text/javascript" src = "js/jquery-2.2.4.js"></script>
	<script type = "text/javascript" src = "js/set.js"></script>
  	<style>
  		body{
  			background:url("img/fresh.gif") no-repeat;
	  		background-size: 100%;
  		}
  	</style>
  </head>
  
  <body>
  
  <script>
  function myFun(sId) {
    var oImg = document.getElementsByTagName('img');

    for (var i = 0; i < oImg.length; i++) {
      if (oImg[i].id == sId) {
        oImg[i].previousSibling.previousSibling.checked = true;
        oImg[i].style.border = '2px solid #FF6600';
      } else {
        oImg[i].style.border = '2px solid #008800';
      }
    }
  }
</script>
  
  <div class="container">
  	<form role="form" id = "form1" method="post" action="PlayerServlet?method=choose">
    <!-- <div class="radio">
      <label><input type="radio" name="optradio" value="level1">初级</label>
    </div>
    <div class="radio">
      <label><input type="radio" name="optradio" value="level2">高级</label>
    </div>
    <div class="radio">
      <label><input type="radio" name="optradio" value="level3">专家级</label>
    </div> -->
    
    <!-- <div class="radio">
		<input type="radio" name="optradio" id="radio1" value="level1">
		<label for="radio1" style="font-family: '幼圆';color:#555555;font-weight:bold ">普通</label>
	</div> -->
	
	<!-- <div class="radio radio-info">
		<input type="radio" id="inlineRadio1" value="level2" name="optradio">
		<label for="inlineRadio1" style="font-family: '幼圆';color:#5BC0DE;font-weight:bold">高级</label>
	</div> -->
	<!-- <div class="radio radio-danger">
		<input type="radio" name="optradio" id="radio6" value="level3" >
		<label for="radio6" style="font-family: '幼圆';color:#D9534F;font-weight:bold">专家级</label>
	</div> -->
    
    	<div class="card" style="top:10px;background:#59CFE2;">
    		<div class="card-body" style="font-size:50px">请选择</div>
  		</div>
  		<br><br>
			    <div class="card  bg-light" style="opacity:0.8">
			    	<span style="font-size:40px">难度：</span>
				    <div class="card-body">
				    	<div class="radio">
							<input type="radio" name="optradio" id="radio1" value="level1">
							<label for="radio1" style="font-family: '幼圆';color:#555555;font-weight:bold;font-size:22px;opacity:1">普通</label>
						</div>
					</div>
					<div class="card-body">
				    	<div class="radio radio-info">
							<input type="radio" id="inlineRadio1" value="level2" name="optradio">
							<label for="inlineRadio1" style="font-family: '幼圆';color:#555555;font-weight:bold;font-size:22px;opacity:1">高级</label>
						</div>
					</div>
					<div class="card-body">
				    	<div class="radio radio-danger">
							<input type="radio" name="optradio" id="radio6" value="level3" >
							<label for="radio6" style="font-family: '幼圆';color:#555555;font-weight:bold;font-size:22px;opacity:1">专家级</label>
						</div>
					</div>
	  			</div>
	  			<br>
	  			
	  			<div class="card bg-light"  style="opacity:0.8">	
	  				<span style="font-size:40px">场景：</span>				
		  			<div class="lanrentuku" style="opacity:1;text-align: center;">
	 					<input type="radio" value= "sea" name="style" style="display:none"> <img id="aa" src="img/sea.jpg" style="height:150px;width:150px;" onclick="myFun(this.id)">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	 					<input type="radio" value= "grass" name="style" style="display:none"> <img id="bb" src="img/grass.jpg" style="height:150px;width:150px;" onclick="myFun(this.id)"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	 					<input type="radio" value= "space" name="style" style="display:none"> <img id="cc" src="img/space.jpg" style="height:150px;width:150px;" onclick="myFun(this.id)">
					</div>
	  			</div>
	  	
	 <br>
   	<input class="btn btn-primary btn-block" type="submit" value="开始游戏" style="height:60px"/>

        
        
  </form>
  </div>
  </body>
</html>
