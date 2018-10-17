Particle[] bee;
void setup()
{
  size(500,530);
  bee= new Particle[8];
  for (int i=0;i<bee.length;i++)
  {
  	bee[i]= new NormalParticle();
  }
  bee[2]= new OddballParticle();
}

void draw()
{
  background(179,242,255);
  noStroke();
  fill(255);
  //clouds
  ellipse(85,90,50,50);
  ellipse(130,80,80,60);
  ellipse(150,100,105,60);
  ellipse(480,140,100,50);
  ellipse(498,110,70,50);
  fill(153,102,0);
  //branches
  quad(0, 270,0, 245,140,200,140,230);
  quad(140,200,140,230,400,230,400,200);
  quad(50,250,75,240,120,280,115,310);
  quad(200,230,240,230,370,160,340,155);
  rect(250,230,20,20);
  fill(76,230,0);
  //leaves
  ellipse(55,280,55,25);
  ellipse(130,280,50,20);
  ellipse(270,175,60,27);
  ellipse(320,150,22,40);
  ellipse(350,185,63,22);
  //bee hvie
  fill(255,225,77);
  ellipse(260,410,80,50);
  fill(153,102,0);
  ellipse(260,390,150,50);
  fill(255,225,77);
  ellipse(260,350,190,70);
  fill(153,102,0);
  ellipse(260,320,150,50);
  fill(255,225,77);
  ellipse(260,300,100,40);
  fill(153,102,0);
  ellipse(260,280,75,30);
  fill(255,225,77);
  ellipse(260,260,50,25);
  //bee
  for (int i=0; i<bee.length;i++)
  {
  	bee[i].show();
  	bee[i].fly();
  }
}
class NormalParticle implements Particle
{
	double myX,myY,myAngle,mySpeed;
	NormalParticle()
	{
		myX=260;
		myY=350;
		myAngle= Math.random()*2*Math.PI;
		mySpeed= Math.random()*3;
	}
	void fly()
	{
		myX=myX+(Math.cos(myAngle)*mySpeed);
		myAngle=myAngle+.01;  
   	 	myY=myY+(Math.sin(myAngle)*mySpeed);
	}
	void show()
	{
		stroke(5);
		strokeWeight(1.5);
		//wings
		fill(179,242,255);
		ellipse((float)myX,(float)(myY-12),10,20);
		ellipse((float)(myX+5),(float)(myY-12),10,20);
		//body
		fill(255,213,0);
		ellipse((float)myX,(float)myY,43,20);
		//eye
		fill(0);
		ellipse((float)(myX-15),(float)myY,4,4);
		//black marks
		strokeWeight(4);
		line((float)myX,(float)(myY-10),(float)myX,(float)(myY+9));
		line((float)(myX+10),(float)(myY-9),(float)(myX+10),(float)(myY+7));


	}
}

interface Particle
{
	public void show();
	public void fly();
}
class OddballParticle implements Particle//uses an interface
{
	double myX,myY,myAngle,mySpeed;
	OddballParticle()
	{
		myX=260;
		myY=350;
	}
	//your code here
}
//class JumboParticle //uses inheritance
//{
	//your code here
//}

