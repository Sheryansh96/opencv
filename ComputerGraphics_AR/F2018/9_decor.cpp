/*****************************************************
 * Program: decor.c  Coded by: Harry Li              *
 * Version: x1.0;    status: tested;                 *
 * Compile and build:                                *
 * g++ main.cpp -o main.o -lGL -lGLU -lglut -lm      *
 * Date: Jun 5, 2014                                 * 
 * Purpose: decoration Demo.                         *  
 *****************************************************/ 
#include <GL/glut.h>
#include <iostream>
#include <unistd.h>
#include <math.h> 

#define UpperBD 11 
#define PI  	3.1415926 
#define Num_pts 10

float Xe = 200.0f;
float Ye = 200.0f;
float Ze = 200.0f; 
float Rho = sqrt(pow(Xe,2) + pow(Ye,2) + pow(Ze,2)); 
float D_focal = 20.0f;  

typedef struct {
	float X[UpperBD];
	float Y[UpperBD];
	float Z[UpperBD];
} pworld;

typedef struct {
	float X[UpperBD];
	float Y[UpperBD];
	float Z[UpperBD];
} pviewer;

typedef struct{
	float X[UpperBD];
	float Y[UpperBD]; 
} pperspective;

typedef struct{
	float X[UpperBD];
	float Y[UpperBD]; 
} pattern2D-L;

void mydisplay()
{
// define x-y coordinate 
float p1x=-1.0f,  p1y= 0.0f;    
float p2x= 1.0f,  p2y= 0.0f;
float p3x= 0.0f,  p3y= 1.0f;
float p4x= 0.0f,  p4y=-1.0f;

glClear(GL_COLOR_BUFFER_BIT);
glLoadIdentity(); 

pworld  world;
pviewer viewer;
pperspective perspective;
pattern2D-L letterL; 

//define the x-y-z world coordinate 
world.X[0] = 0.0;    world.Y[0] =  0.0;   world.Z[0] =  0.0;    // origin  
world.X[1] = 50.0;   world.Y[1] =  0.0;   world.Z[1] =  0.0;    // x-axis
world.X[2] = 0.0;    world.Y[2] =  50.0;  world.Z[2] =  0.0;    // y-axis    
world.X[3] = 0.0;    world.Y[3] =  0.0;   world.Z[3] =  50.0;   // y-axis 

//define projection plane world coordinate 
world.X[4] = 60.0;   world.Y[4] = -50.0;   world.Z[4] =  0.0;     
world.X[5] = 60.0;   world.Y[5] =  50.0;   world.Z[5] =  0.0;    // base line
world.X[7] = 60.0;   world.Y[7] = -50.0;   world.Z[7] = 100.0;   // side bar
world.X[6] = 60.0;   world.Y[6] =  50.0;   world.Z[6] =  100.0;    // side bar

//define 2D pattern letter L 
letterL.X[0] = 10.0; letterL.Y[0] = 10.0;     
letterL.X[1] = 90.0; letterL.Y[1] = 10.0;  
letterL.X[2] = 90.0; letterL.Y[2] = 30.0;     
letterL.X[3] = 30.0; letterL.Y[3] = 30.0; 
letterL.X[4] = 30.0; letterL.Y[4] = 90.0;   
letterL.X[5] = 10.0; letterL.Y[5] = 90.0;

float sPheta = Ye / sqrt(pow(Xe,2) + pow(Ye,2));
float cPheta = Xe / sqrt(pow(Xe,2) + pow(Ye,2));
float sPhi = sqrt(pow(Xe,2) + pow(Ye,2)) / Rho;
float cPhi = Ze / Rho;

float xMin = 1000.0, xMax = -1000.0;
float yMin = 1000.0, yMax = -1000.0;

//decoration 
for(int i = 0; i <= 5; i++)
{
  world.X[8+i] = 60.0;
  world.Y[8+i] = letterL.X[i];
  world.Z[8+i] = letterL.Y[i];
}


for(int i = 0; i <= UpperBD; i++)
{
  viewer.X[i] = -sPheta * world.X[i] + cPheta * world.Y[i];
  viewer.Y[i] = -cPheta * cPhi * world.X[i]  
		   - cPhi * sPheta * world.Y[i] 
		   + sPhi * world.Z[i];
  viewer.Z[i] = -sPhi * cPheta * world.X[i] 
		   - sPhi * cPheta * world.Y[i]
		   -cPheta * world.Z[i] + Rho;
}

for(int i = 0; i <= UpperBD; i++)
{
  perspective.X[i] = D_focal * viewer.X[i] / viewer.Z[i] ;
  perspective.Y[i] = D_focal * viewer.Y[i] / viewer.Z[i] ;
  if (perspective.X[i] > xMax) xMax = perspective.X[i]; 
  if (perspective.X[i] < xMin) xMin = perspective.X[i]; 
  if (perspective.Y[i] > yMax) yMax = perspective.Y[i]; 
  if (perspective.Y[i] < yMin) yMin = perspective.Y[i];  
/*
  std::cout << "xMin " << xMin << std::endl;
  std::cout << "xMax " << xMax << std::endl;
  std::cout << "yMin " << yMin << std::endl;
  std::cout << "yMax " << yMax << std::endl;
*/
}
for(int i = 0; i <= UpperBD; i++)
{
  if ((xMax-xMin) != 0) perspective.X[i] = perspective.X[i]/(xMax-xMin);
  if ((yMax-yMin) != 0) perspective.Y[i] = perspective.Y[i]/(yMax-yMin);
  //std::cout << i << perspective.X[i] << perspective.Y[i] << std::endl;
}

 
glBegin(GL_LINES); 
// cross at the display screen 
//glVertex2f(p1x,p1y);  
//glVertex2f(p2x,p2y);
//glVertex2f(p3x, p3y);
//glVertex2f(p4x, p4y);

   
  glClear(GL_COLOR_BUFFER_BIT);
  glColor3f(1.0, 0.0, 0.0);
  glVertex2f(perspective.X[0],perspective.Y[0]);  
  glVertex2f(perspective.X[1],perspective.Y[1]); 
  glColor3f(0.0, 1.0, 0.0);
  glVertex2f(perspective.X[0],perspective.Y[0]);  
  glVertex2f(perspective.X[2],perspective.Y[2]); 
  glColor3f(0.0, 0.0, 1.0);
  glVertex2f(perspective.X[0],perspective.Y[0]);  
  glVertex2f(perspective.X[3],perspective.Y[3]); 

  glColor3f(1.0, 1.0, 0.0);  // projection plane 
  glVertex2f(perspective.X[4],perspective.Y[4]);  
  glVertex2f(perspective.X[5],perspective.Y[5]); 
  glVertex2f(perspective.X[4],perspective.Y[4]);  
  glVertex2f(perspective.X[7],perspective.Y[7]); 
  glVertex2f(perspective.X[5],perspective.Y[5]);  
  glVertex2f(perspective.X[6],perspective.Y[6]); 
  glVertex2f(perspective.X[6],perspective.Y[6]);  
  glVertex2f(perspective.X[7],perspective.Y[7]); 

  glColor3f(0.0, 1.0, 0.0);  // projection plane 
  glVertex2f(perspective.X[8],perspective.Y[8]);  //Letter L
  glVertex2f(perspective.X[9],perspective.Y[9]); 


glEnd();

glFlush();
sleep(5000);
}

int main(int argc, char** argv)
{
glutInit(&argc,argv);
glutCreateWindow("132 transformation pipeline");
glutDisplayFunc(mydisplay);
glutMainLoop();
}


