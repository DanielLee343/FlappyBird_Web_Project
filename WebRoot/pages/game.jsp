<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>flappy bird</title>
		
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<style>
		/*设置边距为0*/
			body{
				margin:0px;
				overflow:hidden;
				/* background-color:#70C7D0; */
				/* background-image: url(style[index1].bg); */
			}
		/*加背景*/
			#can1{
				/* background-image: url(img/seaBg.jpg); */
				/* background-image: url(style[index1].bg); */
				background-size:100%100%;
			}
			#div1{
				text-align: center;
			}
			#level{
				position:absolute;
				left:0px;
				top:0px;
			}
			#style{
				position:absolute;
				left:50px;
				top:0px;
			}
		</style>
		<script type = "text/javascript" src = "js/jquery-2.2.4.js"></script>
		<script type = "text/javascript" src = "js/set.js"></script>
		<script type="text/javascript" src="js/pojo.js"></script>
		<script type="text/javascript" src="js/game.js"></script>
		<script type="text/javascript" src="js/paint.js"></script>
		<!--调用run()-->
		<script>
		/* window.onload = function (){
			run();
		}; */
		$(function (){
			//run();
			var oCan = document.getElementById('can1');
			var ctx = oCan.getContext('2d');
			paintBird(ctx, bird.left, bird.top, bird.size, bird.color);
			
			var userLevel = document.getElementById("level").innerHTML;
			var userStyle = document.getElementById("style").innerHTML;
			var level = ["level1","level2","level3"];
			var style = ["sea","grass","space"];
			var index,index1 = 0;
			for(var i = 0;i<level.length;i++){
				if(userLevel == level[i]){
					index = i;
				}
			}
			for(var i = 0;i<style.length;i++){
				if(userStyle == style[i]){
					index1 = i;
				}
			}
			if(index1 == 0){
				oCan.style.backgroundImage="url(img/seaBg.jpg)";
			}else if(index1 == 1){
				oCan.style.backgroundImage ="url(img/bg.jpg)";
			}else if(index1 == 2){
				oCan.style.backgroundImage ="url(img/spaceBg.jpg)";
			}
			
			/* var o = document.getElementById('div1');
			var c =document.getElementById('start')
			c.onclick=function(){
				o.removeChild(c);
				run();
			} */
			start(index,index1);
		})
		</script>
	</head>
	<body>
		<!-- <div id = "div1">
			<input style = "width:100px;"type = "button" value = " 点击开始 " id = "start">
		</div> -->
		<!--画布标签，设置长宽像素-->
		<canvas id="can1" width="1536" height="733"></canvas>
		难度：<span id="level">${sessionScope.o1}</span>
		场景：<span id="style">${sessionScope.o2}</span>
		
		<!--加入背景音乐-->
		<!-- <audio src="pages/bgm.mp3" autoplay loop></audio> -->
		<embed src="music/bgm.mp3" autoplay loop=true></embed>
		<!--加入点击鼠标触发的音效-->
		<audio id="audio1" autoplay></audio>
	</body>
</html>