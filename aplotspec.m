s = 1;
a = 0.05;
D = 5.0176;
G = 0.1;

x0=30;
y0=30;
width=1200;
height=1100;
set(gcf,'position',[x0,y0,width,height])
%light('Position',[-0.58674 -0.05336 0.80801],'Style','infinite')

sx=401;
sy=401;
sz=401;
Ep = zeros(sx,sy,sz);
Em = zeros(sx,sy,sz);
Epc = zeros(sx,sy);
Spc = zeros(sx,sy);
Emc = zeros(sx,sy);
Epcc = zeros(1,sx);
Emcc = zeros(1,sx);
kx = linspace(-3.6,3.6,sx);
ky = linspace(-3.6,3.6,sy);
kz = linspace(-3,3,sz);
[SX,SY]= meshgrid(kx,ky);
[SX2,SY2,SZ2]= meshgrid(kx,ky,kz);
cut = 7;
for i = 1 : sx
    for j = 1 : sy
  
            %Epc(i,j) = a * kx(i)+sqrt((D+ky(j)^2)^2+kx(i)^2+kz(k)^2);
            %Emc(i,j) = a * kx(i)-sqrt((D+ky(j)^2)^2+kx(i)^2+kz(k)^2);
            Epc(i,j) = a * kx(i)+sqrt((-D+ky(j)^2)^2+20*kx(i)^2); 
            if Epc(i,j) >= cut
                Epc(i,j) = cut;
            end
           
            Emc(i,j) = a * kx(i)-sqrt((-D+ky(j)^2)^2+20*kx(i)^2);
            if Emc(i,j) <= -cut
                Emc(i,j) = -cut;
            end

    end
    
end




%=========Insert Sphere
[x,y,z] = sphere(100);  
surf(x*1.1*sqrt(D), 1.1*y*2*sqrt(D), 1.1*z*sqrt(D),'FaceColor',[0.9,0.9,0.9], ...
      'FaceAlpha',0.4,'FaceLighting','gouraud','EdgeColor','none');
    hold on
%======================



%
s1 = surf(SY,SX,Epc,'EdgeColor','none','LineStyle','none','FaceLighting','phong');
 set(s1,'facealpha',.6)
hold on;
s2 = surf(SY,SX,Emc,'EdgeColor','none','LineStyle','none','FaceLighting','phong');
set(s2,'facealpha',.6)
hold on;
r = 1;
a = 0;
b = sqrt(D);
c = 0;
[x,y,z] = sphere(100);  
surf(x*r+a, y*r+b, z*r+c,'FaceColor',[0 0 1], ...
      'FaceAlpha',0.5,'FaceLighting','gouraud','EdgeColor','none');
  surf(x*r+a, y*r-b, z*r+c,'FaceColor',[1 0 0], ...
      'FaceAlpha',0.3,'FaceLighting','gouraud','EdgeColor','none');
 axis equal;
 zlim([-cut+0.01 cut-0.01]);
 xlim(1.3*[-2 2]);
 ylim(1.3*[-4.3 4.3]);
 camlight
 
 
 % Arrows
rm = 1.3;
rh = 1.8;
rp = 2;
sph = 5;
sth = 5;
ph = linspace(0,2*pi,sph);
th = linspace(0,pi,sth);
P1 = [];
Ph = [];
P2 = [];

for i = 1 : sph
    for j = 1 : sth
      xm = rm * sin(th(j)) * cos(ph(i));  
      ym = sqrt(D) + rm * sin(th(j)) * sin(ph(i));  
      zm =  rm * cos(th(j));
      
      xh = rh * sin(th(j)) * cos(ph(i));  
      yh = sqrt(D) + rh * sin(th(j)) * sin(ph(i));  
      zh = rh * cos(th(j));
      
      xp = rp * sin(th(j)) * cos(ph(i));  
      yp = sqrt(D) + rp * sin(th(j)) * sin(ph(i));  
      zp =   rp * cos(th(j));   
      P1 = [P1 ;xm ym zm];  
      Ph = [Ph ;xh yh zh];
      P2 = [P2 ;xp yp zp];
    end
end
arrow3(P1,Ph,'b5',0,0,0,1,0.95)
arrow3(Ph,P2,'b',1,1,[],0.95)
P1 = [];
Ph = [];
P2 = [];
rh = 1.5;
for i = 1 : sph
    for j = 1 : sth
      xm = rm * sin(th(j)) * cos(ph(i));  
      ym = -sqrt(D) + rm * sin(th(j)) * sin(ph(i));  
      zm =  rm * cos(th(j));
      
      xh = rh * sin(th(j)) * cos(ph(i));  
      yh = -sqrt(D) + rh * sin(th(j)) * sin(ph(i));  
      zh = rh * cos(th(j));
      
      xp = rp * sin(th(j)) * cos(ph(i));  
      yp = -sqrt(D) + rp * sin(th(j)) * sin(ph(i));  
      zp =   rp * cos(th(j));   
      P1 = [P1 ;xm ym zm];  
      Ph = [Ph ;xh yh zh];
      P2 = [P2 ;xp yp zp];
    end
end
arrow3(P2,Ph,'r5',0,0,0,1,0.95)
arrow3(Ph,P1,'r',1,1,[],0.95)
 
 
%s2.EdgeColor = 'none';
grid off
axis off