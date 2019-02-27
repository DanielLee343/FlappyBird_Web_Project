//类似于汽车、房子、手机等具有某种特定属性的东西，统称为pojo类，或bean类；
//鸟类（圆代替）
function Bird(color){
	//鸟的颜色
	this.color = color;
	//鸟巩膜的颜色
	this.eyeColor = 'white';
	//鸟巩膜的半径
	this.eyeRadius = 10;
	//鸟瞳孔的颜色
	this.eyeInsideColor = 'black';
	//鸟瞳孔的半径
	this.eyeInsideRadius = '2.5';
	//鸟初始位置
	this.left = 100;
	this.top = 300;
	//鸟身体半径
	this.size = 25;
	//鸟的速度
	this.v = 0;		//向下为+	向上为-
	//分数计算
	this.score = 0;
	//是否存活
	this.isLive = true;
}
//柱子类
//上面下面各一个，在一个竖直线上；
//上下柱子的间隔固定；
//左右两列柱子间隔固定；
//柱子的粗细固定；
//柱子相对鸟的速度
function Pillar(position, length,v,color){
	//柱子颜色
	this.color = color;
	//柱子向左移动速度
	this.v = v;
	//柱子宽度
	this.width = 80;
	//柱子位置，是每个柱子左上角的位置
	this.position = position;
	//柱子长度
	this.length = length;
	//柱子是否存在，意思一会解释
	this.isLive = true;
	//鸟是否通过当前柱子
	this.isPass = false;
}