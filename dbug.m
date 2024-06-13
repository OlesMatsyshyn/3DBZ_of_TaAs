
scale = 5;
rTa = 0.15*scale;
rAr = 0.1*scale;
a = 0.1*scale;
zs = 1/30*scale;

Tac = [0 0 1];
Arc = [1 0 0];
q = 0.3;
%%Layer 1

hold on;
r = rAr/4;
c1 = 0;
c = c1;
Tafa = 1;


P1 = [a a 0];
P2 = [0 0 c2];
%P1 = [0 0 0];
%P2 = [1 1 1];
s = size(P1);





hold on;
alp = 0.;
bet = 0;
P1 = [a a 0;a -a 0;-a a 0;-a -a 0];
P2 = [0 0 c2;0 0 c2;0 0 c2;0 0 c2];
edge2(P1,P2);
c1 = 0;
c = c1;
Tafa = 1;
[x,y,z] = sphere(100);  
surf(x*r+a, y*r+a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r-a, y*r-a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r+a, y*r-a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*r-a, y*r+a, z*r+c,'FaceColor',Arc, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');