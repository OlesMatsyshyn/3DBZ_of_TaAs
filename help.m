rf2 = 4;
rf1 = 2;
ph1 = 0;
ph2 = 2*pi/3;
ph3 = 4*pi /3;
curvedcylinder(0.05,50,ph1,0.1,10,[rf1*cos(ph1) rf1*sin(ph1) 0],[rf2*cos(ph1) rf2*sin(ph1) 0],'r');
hold on
curvedcylinder(0.05,50,ph2,0.1,10,[rf1*cos(ph2) rf1*sin(ph2) 0],[rf2*cos(ph2) rf2*sin(ph2) 0],'r');
curvedcylinder(0.05,50,ph3,0.1,10,[rf1*cos(ph3) rf1*sin(ph3) 0],[rf2*cos(ph3) rf2*sin(ph3) 0],'r');
  axis equal;
camlight;
grid off
axis off