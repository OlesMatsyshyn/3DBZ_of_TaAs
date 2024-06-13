x0=30;
y0=30;
width=1200;
height=1100;
scale = 5;
szu = 1.1;
rTa = szu*0.14*scale;
rAr = szu*0.11*scale;
a = 0.1*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])
Tac = [0.9 0.9 0.9];
Licol = [0.9 0.9 0.9];
Ascol = [0.9 0.9 0];
Secol = [0 0.9 0.9];
q = 0.6;

shifttot = 1.4*a;
%%Layer 1

hold on;
rLi = rAr/6;
rAs = rAr/10;
rSe = rAr/8;


c1 = 0;
c = c1;
Tafa = 1;
[x,y,z] = sphere(100);  

%%Coordinates
L1Li1 = [a 1.5*a/3 0];
L1Li2 = [0 -a/5 0];
L1As1 = [0 2*a/3 0];
L1As2 = [a -a/3 0];

surf(x*rLi+L1Li1(1), y*rLi+L1Li1(2), z*rLi+L1Li1(3),'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rLi+L1Li2(1), y*rLi+L1Li2(2), z*rLi+L1Li2(3),'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');

surf(x*rAs, y*rAs+2*a/3, z*rAs+c,'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+a, y*rAs-a/3, z*rAs+c,'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  
%%Layer 2  

c2 = 0.7*10*zs/5;
%%Coordinates
L2Se1 = [0.05*a 1.3*a/3 c2+0.5*zs+zs/2];
L2As1 = [-0.1*a 1.3*a c2+pup+zs/3];
L2As2 = [a/2+0.4*a a/2 c2+pup-zs/10+3*zs/10];

L2Se2 = [1*a -0.3*a c2+0.8*zs];
L2As3 = [a/2+1.3*a/3 0.3*a-3*a/2 c2+pup-zs/15+zs/7+0.2*zs];
L2As4 = [3*a/2+1*a/3 -a/2 c2+pup-zs/10+0.4*zs];


L2As5 = [-a/15 -a/2 c2+pup+1.2*zs/3];

surf(x*rSe+L2Se1(1), y*rSe+L2Se1(2), z*rSe+L2Se1(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  
surf(x*rSe+L2Se2(1), y*rSe+L2Se2(2), z*rSe+L2Se2(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none'); 

pup = zs;  
  
surf(x*rAs+L2As1(1), y*rAs+L2As1(2), z*rAs+L2As1(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');  
surf(x*rAs+L2As2(1), y*rAs+L2As2(2), z*rAs+L2As2(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+L2As3(1), y*rAs+L2As3(2), z*rAs+L2As3(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+L2As4(1), y*rAs+L2As4(2), z*rAs+L2As4(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+L2As5(1), y*rAs+L2As5(2), z*rAs+L2As5(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');

P2 = L1As1;
P1 = L2Se1;
edgeSeAs(P1,P2);  

P2 = L2As2;
edgeSeAs(P1,P2); 

P2 = L2As1;
edgeSeAs(P1,P2); 
edgeSeSe(L1As1,L2As2);
edgeSeSe(L2As2,L2As1);
edgeSeSe(L2As1,L1As1);


%%new triangle 2
P2 = L2As3;
P1 = L2Se2;
edgeSeAs(P1,P2);  

P2 = L2As4;
edgeSeAs(P1,P2); 
P2 = L1As2;
edgeSeAs(P1,P2);

edgeSeSe(L1As2,L2As3);
edgeSeSe(L2As3,L2As4);
edgeSeSe(L2As4,L1As2);

%%Other layers


c3 = 0.9*3*10*zs/5;

L3Li1 = [L1As1(1)+3*shifttot/5 L1As1(2) c3];
L3Li2 = [L1As2(1)+3*shifttot/5 L1As2(2) c3];
L3As1 = [L1Li1(1)+3*shifttot/5 L1Li1(2) c3];
L3As2 = [L1Li2(1)+3*shifttot/5 L1Li2(2) c3];

surf(x*rLi+L3Li1(1), y*rLi+L3Li1(2), z*rLi+L3Li1(3),'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rLi+L3Li2(1), y*rLi+L3Li2(2), z*rLi+L3Li2(3),'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');

surf(x*rAs+L3As1(1), y*rAs+L3As1(2), z*rAs+L3As1(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+L3As2(1), y*rAs+L3As2(2), z*rAs+L3As2(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');

  
c4 =c3+c2-c1;
d = 1.3*a;
L4Se2 = [L2Se2(1)+2.2*shifttot/5 L2Se2(2)+d L2Se2(3)-c2+c4];
L4As3 = [L2As3(1)+2.2*shifttot/5 L2As3(2)+d L2As3(3)-c2+c4];
L4As4 = [L2As4(1)+2.2*shifttot/5 L2As4(2)+d L2As4(3)-c2+c4];  

surf(x*rSe+L4Se2(1), y*rSe+L4Se2(2), z*rSe+L4Se2(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+L4As3(1), y*rAs+L4As3(2), z*rAs+L4As3(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');  
surf(x*rAs+L4As4(1), y*rAs+L4As4(2), z*rAs+L4As4(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');

P2 = L4As3;
P1 = L4Se2;
edgeSeAs(P1,P2);  

P2 = L4As4;
edgeSeAs(P1,P2); 
P2 = L3As1;
edgeSeAs(P1,P2);

edgeSeSe(L3As1,L4As3);
edgeSeSe(L4As3,L4As4);
edgeSeSe(L4As4,L3As1);  
  
%%Layer 5  




c = 10*zs;
surf(x*rLi+a+shifttot, y*rLi+a/2, z*rLi+c,'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rLi+shifttot, y*rLi-a/2, z*rLi+c,'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');  
%%Global Edges 


 


P1 = [a a 0;a -a 0;-a a 0;-a -a 0];
P2 = [a+shifttot a 10*zs;a+shifttot -a 10*zs;-a+shifttot a 10*zs;-a+shifttot -a 10*zs];
P1 = [P1;a a 0;a -a 0;-a a 0;-a -a 0;a+shifttot a 10*zs;a+shifttot -a 10*zs;-a+shifttot a 10*zs;-a+shifttot -a 10*zs];
P2 = [P2;-a a 0;a a 0;-a -a 0 ;a -a 0;-a+shifttot a 10*zs;a+shifttot a 10*zs;-a+shifttot -a 10*zs ;a+shifttot -a 10*zs];
%arrow3(P1,P2,'k1',0,0,0,1,0.95)  
edge2mp(P1,P2,q,[0 0 0])





axis equal;
camlight headlight 
grid off
axis off