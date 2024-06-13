function [X, Y, Z] = WeylPR(P,col)
[x,y,z] = sphere(100);  
s = size(P);
s = s(1);
r = 0.08;
rsp = 0.5*r;
n = 30;
hold on;
for k = 1 :s
     surf(x*rsp+P(k,1), y*rsp+P(k,2), z*rsp+P(k,3),'FaceColor',col, ...
      'FaceAlpha',0.5,'FaceLighting','gouraud','EdgeColor','none');
  
  rm = 1.*r;
rh = 1.3*r;
rp = 2*r;
rc =0.006;
sph = 5;
sth = 3;
ph = linspace(0,2*pi,sph);
th = linspace(0,pi,sth);

D=0;
for i = 1:sph
    for j = 1 : sth
      xm = P(k,1)+rm * sin(th(j)) * cos(ph(i));  
      ym = P(k,2)+sqrt(D) + rm * sin(th(j)) * sin(ph(i));  
      zm =  P(k,3)+rm * cos(th(j)+0.00001);
      
      xh = P(k,1)+rh * sin(th(j)) * cos(ph(i));  
      yh = P(k,2)+sqrt(D) + rh * sin(th(j)) * sin(ph(i));  
      zh = P(k,3)+rh * cos(th(j)+0.00001);
      
      xp = P(k,1)+rp * sin(th(j)) * cos(ph(i));  
      yp = P(k,2)+sqrt(D) + rp * sin(th(j)) * sin(ph(i));  
      zp =  P(k,3)+ rp * cos(th(j)+0.00001);   

      cylinder2Pcolor(rc,n,[xh yh zh],[xp yp zp],col);
      Cone([xh yh zh],[xm ym zm],[rc*2 0],30,col,1,0)
    end
end
end



end