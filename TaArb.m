x0=30;
y0=30;
width=1200;
height=1100;
scale = 5;
rTa = 0.15*scale;
rAr = 0.1*scale;
a = 0.1*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])
Tac = [0 0 1];
Arc = [1 0 0];
q = 1;
%%Layer 1

hold on;
r = rAr/4;
c1 = 0;
c = c1;

[x,y,z] = sphere(100);  
surf(x*r+a, y*r+a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r-a, y*r-a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r+a, y*r-a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r-a, y*r+a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
 
%%Layer 2  
r = rTa/4;
c2 = 1*zs;  
c = c2;
  surf(x*r, y*r, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
%%Layer 3  
r = rAr/4;
c3 = 4*zs;  
c = c3;
  surf(x*r, y*r-a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r, y*r+a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
%%Layer 4  
r = rTa/4;
c4 = 5*zs; 
c = c4;
  surf(x*r+a, y*r, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
    surf(x*r-a, y*r, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
%%Layer 5  
r = rAr/4;
c5 = 8*zs; 
c = c5;
  surf(x*r, y*r, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  %%Layer 6  
r = rTa/4;
c6 = 9*zs; 
c = c6;
  surf(x*r+a, y*r+a, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
    surf(x*r+a, y*r-a, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
    surf(x*r-a, y*r+a, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
    surf(x*r-a, y*r-a, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
%%Layer 7 
r = rAr/4;
c7 = 12*zs;  
c = c7;
  surf(x*r+a, y*r, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
    surf(x*r-a, y*r, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  %%Layer 8  
r = rTa/4;
c8 = 13*zs; 
c = c8;
  surf(x*r, y*r-a, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r, y*r+a, z*r+c,'FaceColor',Tac, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
    %%Layer 9
    
    r = rAr/4;
c9 = 15*zs;
c = c9;
  surf(x*r+a, y*r+a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r-a, y*r-a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r+a, y*r-a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r-a, y*r+a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');

%%Global Edges 




P1 = [a a 0;a -a 0;-a a 0;-a -a 0];
P2 = [a a 15*zs;a -a 15*zs;-a a 15*zs;-a -a 15*zs];
P1 = [P1;a a 0;a -a 0;-a a 0;-a -a 0;a a 15*zs;a -a 15*zs;-a a 15*zs;-a -a 15*zs];
P2 = [P2;-a a 0;a a 0;-a -a 0 ;a -a 0;-a a 15*zs;a a 15*zs;-a -a 15*zs ;a -a 15*zs];
arrow3(P1,P2,'k1',0,0,0,1,0.95)  


%%Inner Edges 
%[X,Y,Z]=cylinder2P(0.1,10,r1,r2);
%surf(X,Y,Z); 

alp = 0.;
bet = 0;
P1 = [a a 0;a -a 0;-a a 0;-a -a 0];
P2 = [0 0 c2;0 0 c2;0 0 c2;0 0 c2];
edge(P1,P2);
%arrow3(P1,Pe,'r6',0,0,0,alp,bet) 
%arrow3(Pe,P2,'b6',0,0,0,alp,bet) 


P1 = [0 a c3;0 -a c3];
P2 = [0 0 c2;0 0 c2];
Pe = (P1+P2)/2;
edge(P1,P2); 

P2 = [-a 0 c4;-a 0 c4;a 0 c4;a 0 c4];
P1 = [0 a c3;0 -a c3;0 a c3;0 -a c3];
Pe = (P1+P2)/2;
edge(P1,P2);
P1 = [0 0 c5;0 0 c5];
P2 = [-a 0 c4;a 0 c4];
Pe = (P1+P2)/2;
edge(P1,P2);

P2 = [a a c6;a -a c6;-a a c6;-a -a c6];
P1 = [0 0 c5;0 0 c5;0 0 c5;0 0 c5];
Pe = (P1+P2)/2;
edge(P1,P2);

P2 = [a a c6;a -a c6;-a a c6;-a -a c6];
P1 = [a 0 c7;a 0 c7;-a 0 c7;-a 0 c7];
Pe = (P1+P2)/2;
edge(P1,P2);

P2 = [0 a c8;0 -a c8;0 a c8;0 -a c8];
P1 = [a 0 c7;a 0 c7;-a 0 c7;-a 0 c7];
Pe = (P1+P2)/2;
edge(P1,P2);
P2 = [0 a c8;0 -a c8;0 a c8;0 -a c8];
P1 = [a a c9;a -a c9;-a a c9;-a -a c9];
Pe = (P1+P2)/2;
edge(P1,P2);
zlim([-5*zs 20*zs])
axis equal;
camlight;
grid off
axis off