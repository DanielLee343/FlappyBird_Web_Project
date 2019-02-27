//清屏
function clearScreen(ctx){
	ctx.clearRect(0, 0, 1536, 750);
}
//画鸟
function paintBird(ctx, left, top, size, color){
	ctx.beginPath();
	ctx.fillStyle = color;
	ctx.arc(left, top, size, 0, 2*Math.PI);//left:100	top:300		size:25
	ctx.fill();
	//画眼睛
	ctx.beginPath();
	ctx.fillStyle = bird.eyeColor;
	ctx.arc(left+13,top-8,bird.eyeRadius,0,2*Math.PI);
	ctx.fill();
	//画眼珠子
	ctx.beginPath();
	ctx.fillStyle = bird.eyeInsideColor;
	ctx.arc(left+18,top-8,bird.eyeInsideRadius,0,2*Math.PI);
	ctx.fill();
	//画嘴
	ctx.beginPath();
	ctx.strokeStyle = 'black';
	ctx.fillStyle = '#FC6747';
	ctx.moveTo(left+4, top+3);
	ctx.lineTo(left+29, top+3);
	ctx.lineTo(left+33, top+6);
	ctx.lineTo(left+29, top+9);
	ctx.lineTo(left+32, top+12);
	ctx.lineTo(left+29, top+15);
	ctx.lineTo(left+4, top+15);
	ctx.lineTo(left+1, top+9);
	ctx.closePath();
	ctx.stroke();
	ctx.fill();
	ctx.beginPath();
	ctx.strokeStyle = 'black';
	ctx.moveTo(left+1,top+9);
	ctx.lineTo(left+29,top+9);
	ctx.stroke();
	//画翅膀
}
//画柱子，我用了渐变色，虽然调整的并不是很好，但是还能看
function paintPillar(ctx, left, top, width, height,color){
	ctx.beginPath();
	var grd=ctx.createLinearGradient(left,top,left+height,top);
	grd.addColorStop(0,color);
	grd.addColorStop(0.45,"white");
	grd.addColorStop(1,color);
	ctx.fillStyle = grd;
	ctx.fillRect(left, top, width, height);
}

//计分
function paintScore(ctx, score){
	ctx.fillStyle = 'red';
	ctx.font = '40px 黑体';
	ctx.fillText('分数:'+score, 1320, 40);
}