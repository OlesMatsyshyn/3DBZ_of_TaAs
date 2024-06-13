x0=30;
y0=30;
width=1200;
height=1100;
set(gcf,'position',[x0,y0,width,height])
BZcolor = [0 1 0];
A = BZcolor;
[x,y,z] = sphere(100);  
a = 1;
h = 1;
h2 = h/2;
sh = 1/3;
al = 1;
bt = 1.5;
r = 0.03;
q = 1;

%=========Insert Sphere
  xwpm = al*bt*a/6; 
  ywpm = al*bt*a/6;
surf(3*x*0.6*xwpm, 3*0.3*y*xwpm-a*bt+ywpm, 3*0.3*z*xwpm,'FaceColor',[0.9,0.9,0.9], ...
      'FaceAlpha',0.4,'FaceLighting','gouraud','EdgeColor','none');
    hold on
%======================


surf(x*r+al*a, y*r+a, z*r+h,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');

  surf(x*r-al*a, y*r+a, z*r+h,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r+al*a, y*r-a, z*r+h,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-al*a, y*r-a, z*r+h,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  
  P1 = [al*a a h;-al*a a h;-al*a -a h;al*a -a h];
  P2 = [-al*a a h;-al*a -a h;al*a -a h;al*a a h];
  edgeBZ(P1,P2,A);
  
  %Surfs========================
  X = [0 0 0 0 0 0];
  Y = [-a -bt*a -a a bt*a a];
  Z = [h 0 -h -h 0 h];
  fill3(X,Y,Z,[0.9 0.9 0.5],'FaceAlpha',0.3,'FaceLighting','gouraud','EdgeColor','none');
  Y = [0 0 0 0 0 0];
  X = al*[-a -bt*a -a a bt*a a];
  Z = [h 0 -h -h 0 h];
  fill3(X,Y,Z,[0.9 0.5 0.9],'FaceAlpha',0.3,'FaceLighting','gouraud','EdgeColor','none');
  
  
  Y = [bt*al*a-sh -bt*al*a+sh -bt*al*a -bt*al*a -bt*al*a+sh bt*al*a-sh bt*al*a bt*al*a];
  X = [bt*a bt*a bt*a-sh -bt*a+sh -bt*a -bt*a -bt*a+sh bt*a-sh];
  Z = [ 0 0 0 0 0 0 0 0];
  fill3(X,Y,Z,[0.5 0.9 0.9],'FaceAlpha',0.3,'FaceLighting','gouraud','EdgeColor','none');
  %===========================
  P1 = [al*a a -h;-al*a a -h;-al*a -a -h;al*a -a -h];
  P2 = [-al*a a -h;-al*a -a -h;al*a -a -h;al*a a -h];
  edgeBZ(P1,P2,A);
  P1 = [al*a a h;-al*a a h;-al*a -a h;al*a -a h];
  P2 = [bt*al*a-sh/2 bt*a-sh/2 h2;-bt*al*a+sh/2 bt*a-sh/2 h2;-al*bt*a+sh/2 -bt*a+sh/2 h2;bt*al*a-sh/2 -bt*a+sh/2 h2];
  edgeBZ(P1,P2,A);
    P1 = [al*a a -h;-al*a a -h;-al*a -a -h;al*a -a -h];
  P2 = [bt*al*a-sh/2 bt*a-sh/2 -h2;-bt*al*a+sh/2 bt*a-sh/2 -h2;-al*bt*a+sh/2 -bt*a+sh/2 -h2;bt*al*a-sh/2 -bt*a+sh/2 -h2];
  edgeBZ(P1,P2,A);
  
  P1 = [bt*al*a-sh bt*a -0;-al*bt*a bt*a-sh -0;al*bt*a-sh -bt*a -0;al*bt*a -bt*a+sh -0];
  P2 = [-al*bt*a+sh bt*a -0;-al*bt*a -bt*a+sh -0;-al*bt*a+sh -bt*a -0;al*bt*a bt*a-sh -0];
  edgeBZ(P1,P2,A);
  
  P1 = [bt*al*a-sh/2 bt*a-sh/2 h2;bt*al*a-sh/2 bt*a-sh/2 h2;-bt*al*a+sh/2 bt*a-sh/2 h2;-bt*al*a+sh/2 bt*a-sh/2 h2];
   P2 = [bt*al*a bt*a-sh 0;bt*al*a-sh bt*a 0;-bt*al*a+sh bt*a 0;-bt*al*a bt*a-sh 0];
    edgeBZ(P1,P2,A);
     P1 = [-bt*al*a+sh/2 -bt*a+sh/2 h2;-bt*al*a+sh/2 -bt*a+sh/2 h2;bt*al*a-sh/2 -bt*a+sh/2 h2;bt*al*a-sh/2 -bt*a+sh/2 h2];
   P2 = [-bt*al*a -bt*a+sh 0;-bt*al*a+sh -bt*a 0;bt*al*a -bt*a+sh 0;bt*al*a-sh -bt*a 0];
    edgeBZ(P1,P2,A);
  
    P1 = [bt*al*a-sh/2 bt*a-sh/2 -h2;bt*al*a-sh/2 bt*a-sh/2 -h2;-bt*al*a+sh/2 bt*a-sh/2 -h2;-bt*al*a+sh/2 bt*a-sh/2 -h2];
   P2 = [bt*al*a bt*a-sh 0;bt*al*a-sh bt*a 0;-bt*al*a+sh bt*a 0;-bt*al*a bt*a-sh 0];
    edgeBZ(P1,P2,A);
     P1 = [-bt*al*a+sh/2 -bt*a+sh/2 -h2;-bt*al*a+sh/2 -bt*a+sh/2 -h2;bt*al*a-sh/2 -bt*a+sh/2 -h2;bt*al*a-sh/2 -bt*a+sh/2 -h2];
   P2 = [-bt*al*a -bt*a+sh 0;-bt*al*a+sh -bt*a 0;bt*al*a -bt*a+sh 0;bt*al*a-sh -bt*a 0];
    edgeBZ(P1,P2,A);
  
  
  surf(x*r+al*a, y*r+a, z*r-h,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-al*a, y*r+a, z*r-h,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r+al*a, y*r-a, z*r-h,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-al*a, y*r-a, z*r-h,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
 %Middle Layer 
   surf(x*r+(bt*al*a-sh), y*r+bt*a, z*r,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-(bt*al*a-sh), y*r+bt*a, z*r,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r+(bt*al*a-sh), y*r-bt*a, z*r,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-(bt*al*a-sh), y*r-bt*a, z*r,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
     surf(x*r+bt*al*a, y*r+(bt*a-sh), z*r,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-al*bt*a, y*r+(bt*a-sh), z*r,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r+al*bt*a, y*r-(bt*a-sh), z*r,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-al*bt*a, y*r-(bt*a-sh), z*r,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  
  %Help layers
    surf(x*r+(bt*al*a-sh/2), y*r+(bt*a-sh/2), z*r-h2,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-(bt*al*a-sh/2), y*r+(bt*a-sh/2), z*r-h2,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r+(bt*al*a-sh/2), y*r-(bt*a-sh/2), z*r-h2,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-(bt*al*a-sh/2), y*r-(bt*a-sh/2), z*r-h2,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  
    surf(x*r+(bt*al*a-sh/2), y*r+(bt*a-sh/2), z*r+h2,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-(bt*al*a-sh/2), y*r+(bt*a-sh/2), z*r+h2,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r+(bt*al*a-sh/2), y*r-(bt*a-sh/2), z*r+h2,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r-(bt*al*a-sh/2), y*r-(bt*a-sh/2), z*r+h2,'FaceColor',A, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  %=================WP
  xwpm = al*bt*a/6; 
  ywpm = al*bt*a/6;
  gm = 0.6;
  haz = a/6;
  WeylPR([-xwpm ywpm-bt*a 0;al*bt*a-xwpm -ywpm 0;xwpm  a*bt-ywpm 0;xwpm-a*al*bt ywpm 0],[1 0 0])
  WeylPB([+xwpm ywpm-bt*a 0;al*bt*a-xwpm ywpm 0;-xwpm a*bt-ywpm 0;xwpm-a*al*bt -ywpm 0],[0 0 1])
  
  WeylPR([-xwpm ywpm-gm*bt*a h-haz;al*bt*gm*a-xwpm -ywpm h-haz;xwpm  gm*a*bt-ywpm h-haz;xwpm-gm*a*al*bt ywpm h-haz],[1 0 0])
  WeylPB([+xwpm ywpm-gm*bt*a h-haz;gm*al*bt*a-xwpm ywpm h-haz;-xwpm gm*a*bt-ywpm h-haz;xwpm-gm*a*al*bt -ywpm h-haz],[0 0 1])
  
  WeylPR([-xwpm ywpm-gm*bt*a -h+haz;al*bt*gm*a-xwpm -ywpm -h+haz;xwpm  gm*a*bt-ywpm -h+haz;xwpm-gm*a*al*bt ywpm -h+haz],[1 0 0])
  WeylPB([+xwpm ywpm-gm*bt*a -h+haz;gm*al*bt*a-xwpm ywpm -h+haz;-xwpm gm*a*bt-ywpm -h+haz;xwpm-gm*a*al*bt -ywpm -h+haz],[0 0 1])
  
  %=================
  
  axis equal;
camlight;
grid off
axis off