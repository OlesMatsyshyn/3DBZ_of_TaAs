%%%Arrows2
vscshift = 0.8*A/2-B/2;
a = 0.5*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])

oP =0*[0 0 1.5*zs/2];

w = 2;
l = 5;


r = a*scale/500;
n = 80;
sc = 0.6;
sc2 = 0.7;
Dv = sc*l*a*2*[1 0 0]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
Cone(Dv-0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2))+vscshift,Dv+vscshift+0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),sc2*[w*a/20 0],30,[0.5 0.5 0.5],1,0) 

Dv = sc*l*a*2*[0 1 0]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
Cone(Dv+vscshift-0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),sc2*[w*a/20 0],30,[0.5 0.5 0.5],1,0) 

Dv = sc*l*a*2*[0 0 1]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
Cone(Dv+vscshift-0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),sc2*[w*a/20 0],30,[0.5 0.5 0.5],1,0) 
surf(1.5*x*a*w/40+vscshift(1), 1.5*y*a*w/40+vscshift(2), 1.5*z*a*w/40+vscshift(3),'FaceColor',[0.7 0.7 0.7], ...
      'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');    
axis equal;
camlight headlight 
grid off
axis off  
