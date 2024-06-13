x0=30;
y0=30;
width=1200;
height=1000;
scale = 5;
szu = 0.5;


rLi = szu*0.16*scale;
rAs = szu*0.14*scale;
rSe = szu*0.12*scale;
rTa = szu*0.14*scale*14/11;
coloursSolar

a = 0.1*scale;
zs = 1/30*scale;
[x,y,z] = sphere(100);  
q = 0.6;
figure
hold on
set(gcf,'position',[x0,y0,width,height])

hd = 0.25;
        surf(x*rLi, y*rLi, z*rLi+12*zs,'FaceColor',Licol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rAs, y*rAs, z*rAs+6*zs,'FaceColor',Ascol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rSe, y*rSe, z*rSe+zs,'FaceColor',Secol, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        surf(x*rTa, y*rTa, z*rTa+19*zs,'FaceColor',Tac, ...
            'FaceAlpha',q,'FaceLighting','gouraud','EdgeColor','none');
        axis equal;
camlight;
grid off
axis off