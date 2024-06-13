x0=30;
y0=30;
width=1200;
height=1000;
scale = 5;
szu = 0.35;


rLi = szu*0.10*scale;
rAs = szu*0.08*scale;
rSe = szu*0.14*scale;
a = 0.1*scale;
zs = 1/30*scale;


set(gcf,'position',[x0,y0,width,height])
Tac = [0.9 0.9 0.9];
Licol = [1 0 0];
Secol = [1 1 0];
Ascol = [0 1 0];
q = 0.6;
beta = 113.12;
C = [5.61 0.000000 0]*a;
B = [0 0 5.66]*a;
A = 6.61*[-sin(pi*(beta-90)/180) cos(pi*(beta-90)/180) 0]*a;
  %A =     a*[5.650300   2.770950  -2.412039];
  %B =    a*[-5.650300   2.770950  2.412039];
  %C =     a*[0.000000    0.000000   5.553300];
[x,y,z] = sphere(100);  

hold on;
mini = 0;%1;
maxi = 0;%2;
minj = 0;%-1;
maxj = 0;%1;
mink = 0;%0;
maxk = 0;%2;
  
for i =mini : maxi
    for j = minj : maxj
        for k =  mink:maxk
           Lip = 0*A+i*A+0.72*B+j*B+0.17*C+k*C;
           Asp = 0.71*A+i*A+0.76*B+j*B+0.34*C+k*C;
           Sep = 0.012*A+i*A+0.76*B+j*B+0.51*C+k*C;
           Se2p =0.75*A+i*A+0.72*B+j*B+0.77*C+k*C; 
           

                    
                      
           edgeSeAsv3(Sep,Asp);  
           edgeSeAsv3(Se2p,Asp);
           edgeSeSev3(Sep,Se2p);
surf(x*rLi+Lip(1), y*rLi+Lip(2), z*rLi+Lip(3),'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+Asp(1), y*rAs+Asp(2), z*rAs+Asp(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');  
surf(x*rSe+Sep(1), y*rSe+Sep(2), z*rSe+Sep(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rSe+Se2p(1), y*rSe+Se2p(2), z*rSe+Se2p(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');   
        %edgeSeAs(Sep,Asp); 
       % edgeSeAsv2(Se2p,Asp); 
       
       
           Lip = 0*A+i*A-0.72*B+j*B+0.67*C+k*C;
           Asp = 0.71*A+i*A-0.76*B+j*B+0.84*C+k*C;
           Sep = 0.012*A+i*A-0.76*B+j*B+1.01*C+k*C;
           Se2p =0.75*A+i*A-0.72*B+j*B+1.27*C+k*C; 
           

                    
                      
           edgeSeAsv3(Sep,Asp);  
           edgeSeAsv3(Se2p,Asp);
           edgeSeSev3(Sep,Se2p);
surf(x*rLi+Lip(1), y*rLi+Lip(2), z*rLi+Lip(3),'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+Asp(1), y*rAs+Asp(2), z*rAs+Asp(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');  
surf(x*rSe+Sep(1), y*rSe+Sep(2), z*rSe+Sep(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rSe+Se2p(1), y*rSe+Se2p(2), z*rSe+Se2p(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');   
        %edgeSeAs(Sep,Asp); 
       % edgeSeAsv2(Se2p,Asp); 
           Lip = 0.5*A+i*A+1.22*B+j*B+0.17*C+k*C;
           Asp = 1.21*A+i*A+1.22*B+j*B+0.34*C+k*C;
           Sep = 0.512*A+i*A+1.26*B+j*B+0.51*C+k*C;
           Se2p =1.25*A+i*A+1.22*B+j*B+0.77*C+k*C; 
           

                    
                      
           edgeSeAsv3(Sep,Asp);  
           edgeSeAsv3(Se2p,Asp);
           edgeSeSev3(Sep,Se2p);
surf(x*rLi+Lip(1), y*rLi+Lip(2), z*rLi+Lip(3),'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+Asp(1), y*rAs+Asp(2), z*rAs+Asp(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');  
surf(x*rSe+Sep(1), y*rSe+Sep(2), z*rSe+Sep(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rSe+Se2p(1), y*rSe+Se2p(2), z*rSe+Se2p(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');   
        %edgeSeAs(Sep,Asp); 
       % edgeSeAsv2(Se2p,Asp);    
       
       
           Lip = 0.5*A+i*A-0.22*B+j*B+0.67*C+k*C;
           Asp = 1.21*A+i*A-0.22*B+j*B+0.84*C+k*C;
           Sep = 0.512*A+i*A-0.26*B+j*B+1.01*C+k*C;
           Se2p =1.25*A+i*A-0.22*B+j*B+1.27*C+k*C; 
           

                    
                      
           edgeSeAsv3(Sep,Asp);  
           edgeSeAsv3(Se2p,Asp);
           edgeSeSev3(Sep,Se2p);
surf(x*rLi+Lip(1), y*rLi+Lip(2), z*rLi+Lip(3),'FaceColor',Licol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rAs+Asp(1), y*rAs+Asp(2), z*rAs+Asp(3),'FaceColor',Ascol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');  
surf(x*rSe+Sep(1), y*rSe+Sep(2), z*rSe+Sep(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
surf(x*rSe+Se2p(1), y*rSe+Se2p(2), z*rSe+Se2p(3),'FaceColor',Secol, ...
      'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');   
        %edgeSeAs(Sep,Asp); 
       % edgeSeAsv2(Se2p,Asp); 
        end
    end
end


minA = mini*A;
maxA = (maxi+1)*A;
minB = minj*B;
maxB = maxj*B;
minC = mink*C;
maxC = (maxk+1)*C;
ToTshift = 0.72*B;
minC2 = minC +0.32*C;
P1 = ToTshift+[minA+minC2+maxB;minA+minB+minC2;minB+(maxA)+minC2;(maxA)+minC2+maxB];
P2 = ToTshift+[minA+minB+minC2;minB+(maxA)+minC2;(maxA)+minC2+maxB;minA+minC2+maxB]; 
% edge2mpv2(P1,P2,q,[0 0 0])  
% P1 = ToTshift+[minA+(maxC-minC)+maxB;minA+minB+(maxC-minC);minB+(maxA)+(maxC-minC);(maxA)+(maxC-minC)+maxB];
% P2 = ToTshift+[minA+minB+(maxC-minC);minB+(maxA)+(maxC-minC);(maxA)+(maxC-minC)+maxB;minA+(maxC-minC)+maxB]; 
% edge2mpv2(P1,P2,q,[0 0 0])  
% 
% P1 = ToTshift+[minA+(maxC-minC)+maxB;minA+minB+(maxC-minC);minB+(maxA)+(maxC-minC);(maxA)+(maxC-minC)+maxB];
% P2 = ToTshift+[minA+minC2+maxB;minA+minB+minC2;minB+(maxA)+minC2;(maxA)+minC2+maxB]; 
% edge2mpv2(P1,P2,q,[0 0 0])  
  
%%%Arrows
% vscshift = (minB+0.2*(maxB-minB))+(minA-0.1*(maxA-minA))-(minC-maxC);
% a = 0.5*scale;
% zs = 1/30*scale;
% set(gcf,'position',[x0,y0,width,height])
% 
% oP =0*[0 0 1.5*zs/2];
% 
% w = 2;
% l = 5;
% 
% 
% r = a*scale/500;
% n = 80;
% Dv = l*B/10;
% shat = sqrt(sum((Dv-oP).^2)/25)/2;
% cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 1 0]);
% Cone(Dv-w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2))+vscshift,Dv+vscshift+w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[0 1 0],1,0) 
% 
% Dv = l*C/10;
% shat = sqrt(sum((Dv-oP).^2)/25)/2;
% cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[1 0 0]);
% Cone(Dv+vscshift-w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[1 0 0],1,0) 
% 
% Dv = l*A/10;
% shat = sqrt(sum((Dv-oP).^2)/25)/2;
% cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 1]);
% Cone(Dv+vscshift-0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[0 0 1],1,0) 
% surf(1.5*x*a*w/40+vscshift(1), 1.5*y*a*w/40+vscshift(2), 1.5*z*a*w/40+vscshift(3),'FaceColor',[0.9 0.9 0.9], ...
%       'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');  
%   
% %%%Arrows2
% vscshift = 0.8*A/2-B/2;
% a = 0.5*scale;
% zs = 1/30*scale;
% set(gcf,'position',[x0,y0,width,height])
% 
% oP =0*[0 0 1.5*zs/2];
% 
% w = 2;
% l = 5;
% 
% 
% r = a*scale/500;
% n = 80;
% Dv = l*a*2*[1 0 0]/10;
% shat = sqrt(sum((Dv-oP).^2)/25)/2;
% cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
% Cone(Dv-0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2))+vscshift,Dv+vscshift+0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[0.5 0.5 0.5],1,0) 
% 
% Dv = l*a*2*[0 1 0]/10;
% shat = sqrt(sum((Dv-oP).^2)/25)/2;
% cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
% Cone(Dv+vscshift-0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[0.5 0.5 0.5],1,0) 
% 
% Dv = l*a*2*[0 0 1]/10;
% shat = sqrt(sum((Dv-oP).^2)/25)/2;
% cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
% Cone(Dv+vscshift-0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[0.5 0.5 0.5],1,0) 
% surf(1.5*x*a*w/40+vscshift(1), 1.5*y*a*w/40+vscshift(2), 1.5*z*a*w/40+vscshift(3),'FaceColor',[0.7 0.7 0.7], ...
%       'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');    


axis equal;
camlight headlight 
grid off
axis off  