//游戏逻辑中枢
//创建鸟的对象

var param = [{pillarV:6,pillarDistance:240},{pillarV:8,pillarDistance:200},{pillarV:9,pillarDistance:180}];
var style = [{birdColor:'blue',pillarColor:'#3D4C8C'},{birdColor:'#FBEE30',pillarColor:'green'},{birdColor:'purple',pillarColor:'#BDBDBD'}];
/*alert(style[index1].bg);*/
var bird = new Bird('#FBEE30');
//创建柱子对象，把20个柱子放到数组中
var pillar = new Array(20);
var count = 0;
function run(index,index1){
	//获取画布
	var oCan = document.getElementById('can1');
	//创建画笔，2d
	var ctx = oCan.getContext('2d');
	//这timer1是游戏页面显示的东西的线程，每25毫秒刷新一次
	var timer1 = setInterval(function (){
		//每次画之前先清屏
		clearScreen(ctx);
		//判断鸟是否碰上柱子（是否死亡），死亡则弹框，结束线程
		if(!bird.isLive){
			alert('游戏结束!你的分数是'+bird.score+'!你好菜啊!')
			clearInterval(timer1);
			clearInterval(timer2);
			window.location.href = 'PlayerServlet?method=gameOver&score='+bird.score;
		}
		//降落一下
		drop(bird);
		//判断鸟是否通过柱子
		for(var i = 0; i < pillar.length; i++){
			if(pillar[i] != null && pillar[i].isLive){
				//移动柱子
				movePillar(pillar[i]);
				//画柱子
				paintPillar(ctx, pillar[i].position.x, pillar[i].position.y, pillar[i].width, pillar[i].length,pillar[i].color);
				//计分，如果每个鸟的身体（圆）的左边通过一个柱子的最右边时，加一分
				if(pillar[i].position.x+pillar[i].width <= bird.left-bird.size && !pillar[i].isPass){
					//这里是因为每次通过上下两个柱子，如果是++的话就会每次加2，所以用+=0.5
					bird.score += 0.5;
					//通过的柱子将isPass设置为true，否则程序将默认鸟通过了所有柱子，就会加每次21
					pillar[i].isPass = true;
				}
			}
		}
		//检验鸟碰到柱子
		for(var i = 0; i < pillar.length; i++){
			if(pillar[i] != null && pillar[i].isLive){
				judgeImpact(bird, pillar[i]);
			}
		}
		//死亡后执行
		//画鸟
		paintBird(ctx, bird.left, bird.top, bird.size, bird.color);
		paintScore(ctx, bird.score);
	}, 25);

	//这个timer2是创建柱子的线程
	var timer2 = setInterval(function (){
		//上面的柱子的长度
		var l = Math.random()*330+100;
		//上面柱子，用json传变量
		pillar[count++] = new Pillar({x:1536, y:0}, l, param[index].pillarV,style[index1].pillarColor);
		//下面柱子
		pillar[count++] = new Pillar({x:1536, y:l+param[index].pillarDistance}, 733-l-param[index].pillarDistance,param[index].pillarV,style[index1].pillarColor);
		//如果柱子达到20个，自动将第20个设置为第0个，节省了内存，属于算法优化
		if(count == 20){
			count = 0;
		}
	}, 1100*8/param[index].pillarV);
}

//点击鼠标事件
document.onmousedown = function (ev){
	//每点击一下出来音效
	var oAudio = document.getElementById('audio1');
	oAudio.src = 'music/wave.mp3';
	//每点击一下做一次竖直上抛
	jump(bird);
}


function start(index,index1){
	
	var oCan = document.getElementById('can1');
	var ctx = oCan.getContext('2d');
	
	var currentSeconds = 3;
    var countDownSeconds = 3;
	
	var interval_id = setInterval(function () {
		if (currentSeconds == 0) {
			clearInterval(interval_id);
			ctx.clearRect(620, 320, 160, 160);
			run(index,index1);
      }else{
		  progress = 360 * currentSeconds / countDownSeconds;
		  progress_pi = Math.PI * (progress / 180 - 1 / 2);
		  ctx.beginPath();
		  ctx.moveTo(700, 400);
		  ctx.arc(700, 400, 80, 0, Math.PI * 2, false);
		  ctx.closePath();
		  ctx.fillStyle = '#4BF41B';
		  ctx.fill();				//green

		  ctx.beginPath();
		  ctx.moveTo(700, 400);
		  ctx.arc(700, 400, 80, -Math.PI * 1 / 2, progress_pi, false);
		  ctx.closePath();
		  ctx.fillStyle = 'red'
		  ctx.lineCap = 'round';
		  ctx.fill();				//red

		  ctx.beginPath();
		  ctx.arc(700, 400, 65, 0, Math.PI * 2, false);
		  ctx.closePath();
		  ctx.fillStyle = '#70C7D0';
		  ctx.fill();				//中间的白色

		  ctx.font = "bold 40pt Arial";
		  ctx.fillStyle = "red";
		  ctx.textAlign = "center";
		  ctx.textBaseline = 'middle';
		  ctx.fillText(currentSeconds, 700, 400);//中间的数字
		  // 抗锯齿
		  //ctx.globalCompositeOperation = 'source-atop';
		  currentSeconds--;
	  }
    }, 1000);
	
}




//鸟自由落体
function drop(bird){
	bird.top = bird.top+bird.v;
	bird.v++;
}

//设置竖直上抛，直接将速度修改为负数即可
function jump(bird){
	bird.v = -13;
}

//移动柱子
function movePillar(pillar){
	pillar.position.x -= pillar.v;
	//如果柱子移动出画布，将isLive设置为false
	if(pillar.position.x < -80){
		pillar.isLive = false;
	}
}

//检测鸟和柱子碰撞
function judgeImpact(bird, pillar){
	//碰到上边框，死亡
	if(bird.top < bird.size){
		bird.isLive = false;
		bird.top = bird.size;
	}
	//碰到下边框，死亡
	else if(bird.top > 733-bird.size){
		bird.isLive = false;
		bird.top = 733-bird.size;
	}
	//当小鸟嵌入上下柱子的左边时（检验鸟是否碰到柱子的左边）
	if(Math.abs(bird.left-pillar.position.x) <= bird.size){
		//碰到上面柱子的左边
		if(pillar.position.y == 0){
			if(bird.top < pillar.length){
				bird.isLive = false;
				bird.left = pillar.position.x-bird.size;
			}
		}
		//碰到下面柱子的左边
		else{
			if(bird.top > pillar.position.y){
				bird.isLive = false;
				bird.left = pillar.position.x-bird.size;
			}
		}
	}
	//如果是上面柱子
	if(pillar.position.y == 0){
		//如果小鸟高度小于上面柱子
		if(Math.abs(bird.top-pillar.length) <= bird.size){
			//并且小鸟在两个柱子之间，死亡
			if(bird.left+bird.size > pillar.position.x && bird.left+bird.size < pillar.position.x+pillar.width+30){
				bird.isLive = false;
				bird.top = pillar.length+bird.size;
			}
		}
	}
	//如果是下面柱子
	else{
		//如果小鸟高度大于 下面柱子上方距离顶部的高度
		if(Math.abs(bird.top-pillar.position.y) <= bird.size){
			//并且小鸟在两个柱子之间，死亡
			if(bird.left+bird.size > pillar.position.x && bird.left+bird.size < pillar.position.x+pillar.width+30){
				bird.isLive = false;
				bird.top = pillar.position.y-bird.size;
			}
		}
	}
}

