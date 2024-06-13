x0=30;
y0=30;
width=1200;
height=1000;
scale = 5;
szu = 0.5;


rLi = szu*0.16*scale;
rAs = szu*0.14*scale;
rSe = szu*0.12*scale;
a = 0.1*scale;
zs = 1/30*scale;


set(gcf,'position',[x0,y0,width,height])
coloursSolar
q = 0.6;
beta = 113.12;
C = [-2.1802808750 0.0000000000 5.1073980781]*a;
B = [0.0000000000 5.5419001579 0.0000000000]  *a;
A = [12.2871999741 0.0000000000 0.0000000000]*a;
 





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
        %Layer1    
        Li1 =    -0.000000000*A+0.740999967*B+0.001000047*C +i*A+j*B+k*C;%L0
        Li2 =    0.000000001*A+0.259000012*B+0.501000043*C +i*A+j*B+k*C;%L0  
        
        %%Layer2
        As3 =    0.284510013*A+0.282609942*B+0.335489994*C +i*A+j*B+k*C;%L1
        As4 =    0.284510011*A+0.717389993*B+0.835489989*C +i*A+j*B+k*C;%L1        
        Se3 =    0.244149916*A+0.283689965*B+0.736039986*C +i*A+j*B+k*C;%L1
        Se4 =    0.244149929*A+0.716310035*B+0.236039990*C +i*A+j*B+k*C;%L1        
        
        %%Layer3
        Se7 =    0.489920034*A+0.263639922*B+0.492760002*C +i*A+j*B+k*C;%L3
        Se8 =    0.489920014*A+0.736360056*B+0.992759951*C +i*A+j*B+k*C;%L3
        Li3 =    0.499999984*A+0.240999945*B+0.001000047*C +i*A+j*B+k*C;%L3
        Li4 =    0.499999991*A+0.758999990*B+0.501000043*C +i*A+j*B+k*C;%L3        
        
        %%Layer4
        As1 =    0.784509974*A+0.782609964*B+0.335489994*C +i*A+j*B+k*C;%L4
        As2 =    0.784509981*A+0.217389993*B+0.835489989*C +i*A+j*B+k*C;%L4
        Se1 =    0.744149955*A+0.783689965*B+0.736039986*C +i*A+j*B+k*C;%L4
        Se2 =    0.744149987*A+0.216310035*B+0.236039990*C +i*A+j*B+k*C;%L4  
        
        %%Layer5
        Se5 =    0.989920034*A+0.763639987*B+0.492760002*C +i*A+j*B+k*C;%L5
        Se6 =    0.989920033*A+0.236360013*B+0.992759951*C +i*A+j*B+k*C;%L5

           
        surf(x*rLi+Li1(1), y*rLi+Li1(2), z*rLi+Li1(3),'FaceColor',Licol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rLi+Li2(1), y*rLi+Li2(2), z*rLi+Li2(3),'FaceColor',Licol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rLi+Li3(1), y*rLi+Li3(2), z*rLi+Li3(3),'FaceColor',Licol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rLi+Li4(1), y*rLi+Li4(2), z*rLi+Li4(3),'FaceColor',Licol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        
        surf(x*rAs+As1(1), y*rAs+As1(2), z*rAs+As1(3),'FaceColor',Ascol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rAs+As2(1), y*rAs+As2(2), z*rAs+As2(3),'FaceColor',Ascol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rAs+As3(1), y*rAs+As3(2), z*rAs+As3(3),'FaceColor',Ascol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rAs+As4(1), y*rAs+As4(2), z*rAs+As4(3),'FaceColor',Ascol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        
        surf(x*rSe+Se1(1), y*rSe+Se1(2), z*rSe+Se1(3),'FaceColor',Secol, ...
             'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rSe+Se2(1), y*rSe+Se2(2), z*rSe+Se2(3),'FaceColor',Secol, ...
             'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rSe+Se3(1), y*rSe+Se3(2), z*rSe+Se3(3),'FaceColor',Secol, ...
             'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rSe+Se4(1), y*rSe+Se4(2), z*rSe+Se4(3),'FaceColor',Secol, ...
             'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rSe+Se5(1), y*rSe+Se5(2), z*rSe+Se5(3),'FaceColor',Secol, ...
             'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rSe+Se6(1), y*rSe+Se6(2), z*rSe+Se6(3),'FaceColor',Secol, ...
             'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rSe+Se7(1), y*rSe+Se7(2), z*rSe+Se7(3),'FaceColor',Secol, ...
             'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rSe+Se8(1), y*rSe+Se8(2), z*rSe+Se8(3),'FaceColor',Secol, ...
             'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
         
        edgeSeAsv3(Se3,As3);  
        edgeSeAsv3(Se3,As4);
        edgeSeAsv3(Se4,As4);
        edgeSeAsv3(Se4,As3);
        
        edgeSeAsv3(Se1,As2);  
        edgeSeAsv3(Se1,As1);
        edgeSeAsv3(Se2,As2); 
        edgeSeAsv3(Se2,As1); 
        
%         edgeSeSev3(Se3,Se7); 
%         edgeSeSev3(Se3,Se8);
%         edgeSeSev3(Se4,Se7);
%         edgeSeSev3(Se4,Se7);
%         edgeSeSev3(Se1,Se7); 
%         edgeSeSev3(Se1,Se8);
%         edgeSeSev3(Se2,Se7);
%         edgeSeSev3(Se2,Se7);
        
        %Interlayes 3 and 4 
        %edgeSeSev3(Se1,Se5);
        %edgeSeSev3(Se1,Se6);
        %edgeSeSev3(Se2,Se5);
        %edgeSeSev3(Se2,Se6);        
        edgeSeAsv3(Se5,As1);  
        edgeSeAsv3(Se6,As2);
        
        edgeSeSev3(Se5,Se6);
        
        %Interlayer 0 and 1
        edgeSeLiv3(Se3,Li2);
        edgeSeLiv3(Se4,Li1);
        edgeLiLiv3(Li2,Li1);
        %edgeLiAsv3(Li1,As3);
        %edgeLiAsv3(Li1,As4);
        %edgeLiAsv3(Li2,As3);
        %edgeLiAsv3(Li2,As4); 
        %Layer 3
        edgeSeSev3(Se7,Se8);
        edgeLiLiv3(Li3,Li4);
        edgeSeLiv3(Se7,Li3);
        edgeSeLiv3(Se8,Li4);
        %Interlayer 2 3 4
        edgeSeAsv3(Se8,As4);  
        edgeSeSev3(Se8,Se1); 
        edgeSeSev3(Se3,Se7);
        edgeSeAsv3(Se7,As2);
        edgeLiAsv3(Li3,As3);
        edgeSeLiv3(Se2,Li3);
        edgeSeLiv3(Se4,Li4);
        edgeLiAsv3(Li4,As1);
        end
    end
end

minA = mini*A;
maxA = (maxi+1)*A;
minB = minj*B;
maxB = (maxj+1)*B;
minC = mink*C;
maxC = (maxk+1)*C;
ToTshift = 0.;
minC2 = minC;
P1 = ToTshift+[minA+minC2+maxB;minA+minB+minC2;minB+(maxA)+minC2;(maxA)+minC2+maxB];
P2 = ToTshift+[minA+minB+minC2;minB+(maxA)+minC2;(maxA)+minC2+maxB;minA+minC2+maxB]; 
edge2mpv2(P1,P2,q,[0 0 0])  
P1 = ToTshift+[minA+(maxC-minC)+maxB;minA+minB+(maxC-minC);minB+(maxA)+(maxC-minC);(maxA)+(maxC-minC)+maxB];
P2 = ToTshift+[minA+minB+(maxC-minC);minB+(maxA)+(maxC-minC);(maxA)+(maxC-minC)+maxB;minA+(maxC-minC)+maxB]; 
edge2mpv2(P1,P2,q,[0 0 0])  

P1 = ToTshift+[minA+(maxC-minC)+maxB;minA+minB+(maxC-minC);minB+(maxA)+(maxC-minC);(maxA)+(maxC-minC)+maxB];
P2 = ToTshift+[minA+minC2+maxB;minA+minB+minC2;minB+(maxA)+minC2;(maxA)+minC2+maxB]; 
edge2mpv2(P1,P2,q,[0 0 0])  
  
%%%Arrows
vscshift = (minB-0.2*(maxB-minB))+(minA-0.1*(maxA-minA))-(minC-maxC);
a = 0.3*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])

oP =0*[0 0 1.5*zs/2];

w = 2;
l = 3;


r = a*scale/500;
n = 80;
Dv = l*B/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 1 0]);
Cone(Dv-0.7*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2))+vscshift,Dv+vscshift+0.7*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[0 1 0],1,0) 

Dv = l*C/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[1 0 0]);
Cone(Dv+vscshift-0.7*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.7*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[1 0 0],1,0) 

Dv = l*A/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 1]);
Cone(Dv+vscshift-0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.4*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[w*a/20 0],30,[0 0 1],1,0) 
surf(1.5*x*a*w/40+vscshift(1), 1.5*y*a*w/40+vscshift(2), 1.5*z*a*w/40+vscshift(3),'FaceColor',[0.9 0.9 0.9], ...
      'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');  
  
%%%Arrows2
vscshift = -0.3*A/2-0.3*B;
a = 0.5*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])

oP =0*[0 0 1.5*zs/2];

w = 2;
l = 2;

ss = 0.5;
r = ss*a*scale/500;
n = 80;
Dv = l*a*2*[1 0 0]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
Cone(Dv-0.8*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2))+vscshift,Dv+vscshift+0.8*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ss*w*a/20 0],30,[0.5 0.5 0.5],1,0) 

Dv = l*a*2*[0 1 0]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
Cone(Dv+vscshift-0.8*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.8*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ss*w*a/20 0],30,[0.5 0.5 0.5],1,0) 

Dv = l*a*2*[0 0 1]/10;
shat = sqrt(sum((Dv-oP).^2)/25)/2;
cylinder2Pcolor(1.2*r*w,n,oP+vscshift,Dv+vscshift,[0 0 0]);
Cone(Dv+vscshift-0.8*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),Dv+vscshift+0.8*w*shat*(Dv-oP)/sqrt(sum((Dv-oP).^2)),[ss*w*a/20 0],30,[0.5 0.5 0.5],1,0) 
surf(ss*1.5*x*a*w/40+vscshift(1), ss*1.5*y*a*w/40+vscshift(2), ss*1.5*z*a*w/40+vscshift(3),'FaceColor',[0.7 0.7 0.7], ...
      'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');    

%Solar Rectification vector

a = 0.5*scale;
zs = 1/30*scale;
set(gcf,'position',[x0,y0,width,height])

oP =A/2+B/2+C/2;
cshift= 40;

Dv = 1.5*a*[-0.46 0 0.9];
ml = 3;
r = ml*a*scale/500;
n = 80;

shat = sqrt(sum((Dv).^2))/20;



cylinder2Pcolor(r,n,oP,Dv+oP,[255 255 0]/255);
Cone(Dv+oP-0.7*Dv*shat,Dv+oP+0.7*Dv*shat,[ml*a/20 0],30,[255 255 0]/255,1,0)
Cone(Dv+oP-0.7*Dv*shat,Dv+oP+0.7*Dv*shat,[ml*a/20 0],30,[255 255 0]/255,1,0)

[x,y,z] = sphere(100);  
surf(ml*x*a/40+oP(1), ml*y*a/40+oP(2), ml*z*a/40+oP(3),'FaceColor',[0.9 0.9 0.9], ...
      'FaceAlpha',1,'FaceLighting','gouraud','EdgeColor','none');
  

axis equal;
camlight headlight 
grid off
axis off  