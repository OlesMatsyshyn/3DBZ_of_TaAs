A = [0.65 0.65 0.65];
nb = 300;
rb = 1.3;
hc = 0.4;
cylinder2Pcolor(rb,nb,[0 0 -hc/2],[0 0 hc/2],A);
hold on


C = [0 0 hc/2] ;   % center of circle 
R = rb ;    % Radius of circle 
teta=0:0.01:2*pi ;
x=C(1)+R*cos(teta);
y=C(2)+R*sin(teta) ;
z = C(3)+zeros(size(x)) ;
patch(x,y,z,A,'EdgeColor','none')
C = [0 0 -hc/2] ;   % center of circle 
%R = 1. ;    % Radius of circle 
teta=0:0.01:2*pi ;
x=C(1)+R*cos(teta);
y=C(2)+R*sin(teta) ;
z = C(3)+zeros(size(x)) ;
patch(x,y,z,A,'EdgeColor','none')
%plot3(C(1),C(2),C(3),A)

%====Tubes
ph1 = 0;
ph2 = 2*pi/3;
ph3 = 4*pi/3;
rs = 0.95*hc/2;
ns = 100;
rf = 2;
cylinder2Pcolor(rs,ns,[0 0 0],[rf*cos(ph1) rf*sin(ph1) 0],A);
cylinder2Pcolor(rs,ns,[0 0 0],[rf*cos(ph2) rf*sin(ph2) 0],A);
cylinder2Pcolor(rs,ns,[0 0 0],[rf*cos(ph3) rf*sin(ph3) 0],A);

%Photons
rf2 = 2.8;
rf1 = 2.5;
rf11 = 2.2;
rf0 = 2.2;
rf4 = 3.2;
ph2 = 2*pi/3;
ph3 = 4*pi /3;
phc = [1 120/250 0];

curvedcylinder(0.05,50,ph2,0.1,2,[rf1*cos(ph2) rf1*sin(ph2) 0],[0.9*rf2*cos(ph2) 0.9*rf2*sin(ph2) 0],phc);
curvedcylinder(0.05,50,ph3,0.1,2,[rf1*cos(ph3) rf1*sin(ph3) 0],[0.9*rf2*cos(ph3) 0.9*rf2*sin(ph3) 0],phc);

Cone([rf1*cos(ph2) rf1*sin(ph2) 0],[rf0*cos(ph2) rf0*sin(ph2) 0],[0.2 0],30,phc,1,0)
Cone([rf1*cos(ph3) rf1*sin(ph3) 0],[rf0*cos(ph3) rf0*sin(ph3) 0],[0.2 0],30,phc,1,0)
%Current
curcol = [1 0 0];
cylinder2Pcolor(0.15, 50,[rf11*cos(0) rf11*sin(0) 0],[rf2*cos(0) rf2*sin(0) 0],curcol);
Cone([rf2*cos(0) rf2*sin(0) 0],[rf4*cos(0) rf4*sin(0) 0],[0.25 0],30,curcol,1,0);
  axis equal;
camlight;
grid off
axis off