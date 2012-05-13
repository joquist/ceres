//CERES (Commodity Engagement in Rural Economic Sectors) 
//Interactive Data Map

PImage d_map;  // Map image
PImage logo; //logo
PFont fontA;

int x = 0;
int y = 0;

color mouseOverColor;

String hover[] = new String[375000];

//Crops
String crop1 = "Maize";
String crop2 = "Mango";
String crop3 = "Pineapple";
String crop4 = "Yucca";
String crop5 = "Papaya";

PImage crop_img1;
PImage crop_img2;
PImage crop_img3;
PImage crop_img4;
PImage crop_img5;

//Crop Prices
int price1;
int price2;
int price3;
int price4;
int price5;

//Crop Price Arrays by Dept
String [][]prices = new String[17][6];

void setup() {
  size(750, 500);
  logo = loadImage("logo.png"); //load logo
  d_map = loadImage("nicaragua_dept_map2.png");  // Load map
  crop_img1 = loadImage("crop1.png"); //load crop icons
  crop_img2 = loadImage("crop2.png"); 
  crop_img3 = loadImage("crop3.png");
  crop_img4 = loadImage("crop4.png");
  crop_img5 = loadImage("crop5.png");
  fontA = loadFont("Swiss721BT-Bold-48.vlw");
  textFont(fontA, 20);
  
  for (int i = 0; i <375000; i++)
  {
    hover[i] = "0";
  }
  
  String a[] = loadStrings("hover_map.txt");
  arrayCopy(a, hover);
 
  //dept names
  prices[0][0] = "Boaco";
  prices[1][0] = "Carazo";
  prices[2][0] = "Chinandega";
  prices[3][0] = "Chontales";
  prices[4][0] = "Esteli";
  prices[5][0] = "Granada";
  prices[6][0] = "Jinotega";
  prices[7][0] = "Leon";
  prices[8][0] = "Madriz";
  prices[9][0] = "Managua";
  prices[10][0] = "Masaya";
  prices[11][0] = "Matagalpa";
  prices[12][0] = "Nueva Segovia";
  prices[13][0] = "Rivas";
  prices[14][0] = "Rio San Juan";
  prices[15][0] = "Region Autonoma del Atlantico Norte";
  prices[16][0] = "Region Autonoma del Atlantico Sur";
  
  for (int j = 0; j < 17; j++)
  {
    for (int i = 1; i < 6; i++)
    {
      int randomN = int(random(0, 200));
      prices[j][i] = ""+randomN;
    }
  }
  
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  image(d_map, 0, 0); 
  image(logo, 15, 15);
  //crop images
  
  image(crop_img1, width-92, 20);
  image(crop_img2, width-92, 112);
  image(crop_img3, width-92, 204);
  image(crop_img4, width-92, 296);
  image(crop_img5, width-92, 388);
  
  textAlign(RIGHT);
  fill(#2c2c2c);
  
  //currency markers
  for (int i = 0; i < 5; i++)
  {
    text("C$", width-63, 98+(92*i));
  }
  
  fill(#FFFFFF);
  textAlign(LEFT);
  
  x = mouseX;
  y = mouseY;
  
  int a = x+(y*width);

  //Following code should be made into a function call
  
  if (hover[x+(y*width)].equals("1"))
  {
    text(prices[0][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[0][i], width-13, 6+(92*i));
      barGraphs(int(prices[0][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("2"))
  {
    text(prices[1][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[1][i], width-13, 6+(92*i));
      barGraphs(int(prices[1][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("3"))
  {
    text(prices[2][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[2][i], width-13, 6+(92*i));
      barGraphs(int(prices[2][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("4"))
  {
    text(prices[3][0], 50, height-50);

    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[3][i], width-13, 6+(92*i));
      barGraphs(int(prices[3][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("5"))
  {
    text(prices[4][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[4][i], width-13, 6+(92*i));
      barGraphs(int(prices[4][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("6"))
  {
    text(prices[5][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[5][i], width-13, 6+(92*i));
      barGraphs(int(prices[5][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("7"))
  {
    text(prices[6][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[6][i], width-13, 6+(92*i));
      barGraphs(int(prices[6][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("8"))
  {
    text(prices[7][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[7][i], width-13, 6+(92*i));
      barGraphs(int(prices[7][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("9"))
  {
    text(prices[8][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[8][i], width-13, 6+(92*i));
      barGraphs(int(prices[8][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("10"))
  {
    text(prices[9][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[9][i], width-13, 6+(92*i));
      barGraphs(int(prices[9][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("11"))
  {
    text(prices[10][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[10][i], width-13, 6+(92*i));
      barGraphs(int(prices[10][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("12"))
  {
    text(prices[11][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[11][i], width-13, 6+(92*i));
      barGraphs(int(prices[11][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("13"))
  {
    text(prices[12][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[12][i], width-13, 6+(92*i));
      barGraphs(int(prices[12][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("14"))
  {
    text(prices[13][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[13][i], width-13, 6+(92*i));
      barGraphs(int(prices[13][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("15"))
  {
    text(prices[14][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[14][i], width-13, 6+(92*i));
      barGraphs(int(prices[14][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("16"))
  {
    text(prices[15][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[15][i], width-13, 6+(92*i));
      barGraphs(int(prices[15][i]), i);
    }
    fill(#FFFFFF);
  }
  if (hover[x+(y*width)].equals("17"))
  {
    text(prices[16][0], 50, height-50);
    fill(#2c2c2c);
    textAlign(RIGHT);
    for (int i = 1; i < 6; i++)
    {
      text(prices[16][i], width-13, 6+(92*i));
      barGraphs(int(prices[16][i]), i);
    }
    fill(#FFFFFF);
  }
}

void barGraphs(int price, int q)
{ 
  //price bar graph visualization
  int xBar = width-92;
  noStroke();
  q--;
  fill(#ffb400, price+50);
  quad(xBar, 20+(q*92), xBar, 75+(q*92), xBar-price, 75+(q*92), xBar-price, 20+(q*92));
  fill(#2c2c2c);
}