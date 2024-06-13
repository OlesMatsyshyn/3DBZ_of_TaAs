x0=30;
y0=30;
width=1200;
height=1100;
scale = 5;
q=1;
a = 2*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])

oP =[0 0 15*zs/2];
thE = pi/4;
thD = 0*thE;
phE = pi/4;
E = a;
D = a/2;
Ev = 0.6*E*[cos(phE)*sin(thE) sin(phE)*sin(thE) cos(thE)]+[0 0 15*zs/2];
Dv = D*[cos(phE)*sin(thD) sin(phE)*sin(thD) cos(thD)]+[0 0 15*zs/2];
Jv =0.45*E*abs(sin(thE-thD))*[cos(phE)*sin(thE-pi/2) sin(phE)*sin(thE-pi/2) cos(thE-pi/2)]+[0 0 15*zs/2];% 
r = a*scale/500;
n = 80;
%arrow3(oP,Ev,'k1',0,0,0,1,0.95)
shat = sqrt(sum((Dv-oP).^2)/25)/2;


cylinder2Pcolor(r,n,oP,Ev,[0 0 1]);
hold on
Cone(Ev-shat*(Ev-oP)/sqrt(sum((Ev-oP).^2)),Ev+shat*(Ev-oP)/sqrt(sum((Ev-oP).^2)),[a/20 0],80,[0 0 1],1,0)
cf1 = Ev+shat*(Ev-oP)/sqrt(sum((Ev-oP).^2));
cf2 = Jv+shat*(Jv-oP)/sqrt(sum((Jv-oP).^2));
cf3 = Dv+shat*(Dv-oP)/sqrt(sum((Dv-oP).^2));
X =[0 cf2(1) cf3(1) cf1(1)];
Y =[0 cf2(2) cf3(2) cf1(2)];
Z =[15*zs/2 cf2(3) cf3(3) cf1(3)];
fill3(X,Y,Z,[0.9 0.9 0.9],'FaceAlpha',0.165,'EdgeColor','none');
cylinder2Pcolor(r,n,oP,Dv,[0 1 0]);
%Cone(Dv-(Dv-oP)/10,Dv+(Dv-oP)/10,[a/20 0],30,[1 0 0],1,0)
Cone(Dv-shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[a/20 0],80,[0 1 0],1,0)
cylinder2Pcolor(r,n,oP,Jv,[1 0 0]);


Cone(Jv-shat*(Jv-oP)/sqrt(sum((Jv-oP).^2)),Jv+shat*(Jv-oP)/sqrt(sum((Jv-oP).^2)),[a/20 0],80,[1 0 0],1,0)
[x,y,z] = sphere(100);  
surf(x*a/40, y*a/40, z*a/40+15*zs/2,'FaceColor',[0.9 0.9 0.9], ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
  ep = Ev+shat*(Ev-oP)/sqrt(sum((Ev-oP).^2));
  dp = Dv+shat*(Dv-oP)/sqrt(sum((Dv-oP).^2));
  jp = Jv+shat*(Jv-oP)/sqrt(sum((Jv-oP).^2));
  xt = [ep(1) dp(1) jp(1)];
  yt = [ep(2) dp(2) jp(2)];
  zt = [ep(3) dp(3) jp(3)];
    plot3(xt,yt,zt,'k--','Linewidth',4)
  es = oP+0.5*(Ev-oP)/sqrt(sum((Ev-oP).^2))/1;
  ds = oP+0.5*(Dv-oP)/sqrt(sum((Dv-oP).^2))/sin(thE);
  js = oP+0.5*(Jv-oP)/sqrt(sum((Jv-oP).^2))/1;
  xt = [es(1) ds(1) js(1)];
  yt = [es(2) ds(2) js(2)];
  zt = [es(3) ds(3) js(3)];
 %   plot3(xt,yt,zt,'k-','Linewidth',4)
%arrow3(oP,Dv,'k1',0,0,0,1,0.95) 
%arrow3(oP,Jv,'k1',0,0,0,1,0.95) 
axis equal;
camlight;
grid off
axis off