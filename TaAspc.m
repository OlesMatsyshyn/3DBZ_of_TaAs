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
coloursSolar
Arc = Ascol;
q = 0.6;
%%Layer 1

hold on;
r = rAr/4;
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
%arrow3(P1,P2,'k1',0,0,0,1,0.95)  
edge2mp(P1,P2,q,[0 0 0])

%%Inner Edges 
%[X,Y,Z]=cylinder2P(0.1,10,r1,r2);
%surf(X,Y,Z); 

alp = 0.;
bet = 0;
P1 = [a a 0;a -a 0;-a a 0;-a -a 0];
P2 = [0 0 c2;0 0 c2;0 0 c2;0 0 c2];
edge2(P1,P2);
%arrow3(P1,Pe,'r6',0,0,0,alp,bet) 
%arrow3(Pe,P2,'b6',0,0,0,alp,bet) 


P1 = [0 a c3;0 -a c3];
P2 = [0 0 c2;0 0 c2];

edge2(P1,P2); 

P2 = [-a 0 c4;-a 0 c4;a 0 c4;a 0 c4];
P1 = [0 a c3;0 -a c3;0 a c3;0 -a c3];

edge2(P1,P2);
P1 = [0 0 c5;0 0 c5];
P2 = [-a 0 c4;a 0 c4];

edge2(P1,P2);

P2 = [a a c6;a -a c6;-a a c6;-a -a c6];
P1 = [0 0 c5;0 0 c5;0 0 c5;0 0 c5];

edge2(P1,P2);

P2 = [a a c6;a -a c6;-a a c6;-a -a c6];
P1 = [a 0 c7;a 0 c7;-a 0 c7;-a 0 c7];

edge2(P1,P2);

P2 = [0 a c8;0 -a c8;0 a c8;0 -a c8];
P1 = [a 0 c7;a 0 c7;-a 0 c7;-a 0 c7];

edge2(P1,P2);
P2 = [0 a c8;0 -a c8;0 a c8;0 -a c8];
P1 = [a a c9;a -a c9;-a a c9;-a -a c9];
Pe = (P1+P2)/2;
edge2(P1,P2);

%%%Arrows
a = 0.5*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])

oP =[0 0 16*zs/2];
thE = pi/4;
thD = 0*thE;
phE = pi/4;
E = a*1.2;
D = -1.5*a/2;
ml = 2;
Ev = E*[cos(phE)*sin(thE) sin(phE)*sin(thE) cos(thE)]+[0 0 15*zs/2];
Dv = 1.25*D*[cos(phE)*sin(thD) sin(phE)*sin(thD) cos(thD)]+[0 0 15*zs/2];
Jv =2*E*abs(sin(thE-thD))*[cos(phE)*sin(thE-pi/2) sin(phE)*sin(thE-pi/2) cos(thE-pi/2)]+[0 0 15*zs/2];% 
r = ml*a*scale/500;
n = 80;
%arrow3(oP,Ev,'k1',0,0,0,1,0.95)
shat = sqrt(sum((Dv-oP).^2)/25)/2;


%cylinder2Pcolor(r,n,oP,Ev,[0 0 1]);
%hold on
%Cone(Ev-shat*(Ev-oP)/sqrt(sum((Ev-oP).^2)),Ev+shat*(Ev-oP)/sqrt(sum((Ev-oP).^2)),[a/20 0],30,[0 0 1],1,0)

cshift = 40;
cylinder2Pcolor(r,n,oP,Dv,[255 255 0]/255);
Cone(Dv-(Dv-oP)/10,Dv+(Dv-oP)/10,[ml*a/20 0],30,[255 255 0]/255,1,0)
Cone(Dv-shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ml*a/20 0],30,[255 255 0]/255,1,0)
%cylinder2Pcolor(r,n,oP,Jv,[1 0 1]);


%Cone(Jv-shat*(Jv-oP)/sqrt(sum((Jv-oP).^2)),Jv+shat*(Jv-oP)/sqrt(sum((Jv-oP).^2)),[a/20 0],30,[1 0 1],1,0)
[x,y,z] = sphere(100);  
surf(ml*x*a/40, ml*y*a/40, ml*z*a/40+16*zs/2,'FaceColor',[0.9 0.9 0.9], ...
      'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');

  
  
%%%Arrows
A = a*[1 0 0];
B = a*[0 1 0];
C = a*[0 0 1];
vscshift = -a*[0.65 0.65 0]/2+[0 0 zs];
vscshift2 =[0 0 zs];
a = 0.3*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])

oP =0*[0 0 1.5*zs/2];

w = 1.3;
l = 2.;
ww = 1;

r = a*scale/500;
n = 80;
Dv = l*B/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift+vscshift2,Dv+vscshift+vscshift2,[0 1 0]);
Cone(Dv-1.2*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2))+vscshift+vscshift2,Dv+vscshift+vscshift2+1.2*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ww*w*a/20 0],30,[0 1 0],1,0) 

Dv = 1.8*l*C/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift+vscshift2,Dv+vscshift+vscshift2,[1 0 0]);
Cone(Dv+vscshift+vscshift2-0.8*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+vscshift2+0.8*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ww*w*a/20 0],30,[1 0 0],1,0) 

Dv = l*A/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift+vscshift2,Dv+vscshift+vscshift2,[0. 0. 1]);
Cone(Dv+vscshift+vscshift2-1.2*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+vscshift2+1.2*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ww*w*a/20 0],30,[0.2 0.2 1],1,0) 
surf(1.5*x*a*w/40+vscshift(1)+vscshift2(1), 1.5*y*a*w/40+vscshift(2)+vscshift2(2), 1.5*z*a*w/40+vscshift(3)+vscshift2(3),'FaceColor',[0.9 0.9 0.9], ...
      'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');  
  
%%%Arrows2
vscshift = -a*[1.1 1.1 3*zs]/2;
a = 0.5*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])

oP =0*[0 0 -zs];
zshift = [0 0 -5*zs];
w = 1.3;
l = 1.3;
ww = 1;
ss = 0.5;
r = ss*a*scale/500;
n = 80;
Dv = l*a*2*[1 0 0]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift+zshift,Dv+vscshift+zshift,[0 0 0]);
Cone(Dv-1.*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2))+vscshift+zshift,Dv+vscshift+zshift+1.*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ww*ss*w*a/20 0],30,[0.5 0.5 0.5],1,0) 

Dv = l*a*2*[0 1 0]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift+zshift,Dv+vscshift+zshift,[0 0 0]);
Cone(Dv+vscshift+zshift-1.*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+zshift+vscshift+1.*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ww*ss*w*a/20 0],30,[0.5 0.5 0.5],1,0) 

Dv = l*a*2*[0 0 1]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift+zshift,Dv+vscshift+zshift,[0 0 0]);
Cone(Dv+vscshift+zshift-1.*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+zshift+vscshift+1.*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ww*ss*w*a/20 0],30,[0.5 0.5 0.5],1,0) 
surf(ss*1.*x*a*w/20+vscshift(1), ss*1.*y*a*w/20+vscshift(2), ss*1.*z*a*w/20+vscshift(3)+zshift(3),'FaceColor',[0.7 0.7 0.7], ...
      'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');    
  

%zlim([-1*zs 25*zs])
%xlim([-0.2*a 0.2*a])
%ylim([-0.5*a 0.5*a])
%set(gca,'Zdir','reverse')
axis equal;
camlight('left')
grid off
axis off