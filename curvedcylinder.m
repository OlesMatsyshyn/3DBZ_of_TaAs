function [X, Y, Z] = curvedcylinder(R, N,ph,A,Ns,r1,r2,col)


    % The parametric surface will consist of a series of N-sided
    % polygons with successive radii given by the array R.
    % Z increases in equal sized steps from 0 to 1.

    % Set up an array of angles for the polygon.
    theta = linspace(0,2*pi,N);
    m = 100;
                    % Number of radius values
                                   % supplied.

    


    X = zeros(m, N);             % Preallocate memory.
    Y = zeros(m, N);
    Z = zeros(m, N);
    
    v=(r2-r1)/sqrt((r2-r1)*(r2-r1)');    %Normalized vector;
    %cylinder axis described by: r(t)=r1+v*t for 0<t<1
    R2=rand(1,3);              %linear independent vector (of v)
    x2=v-R2/(R2*v');    %orthogonal vector to v
    x2=x2/sqrt(x2*x2');     %orthonormal vector to v
    x3=cross(v,x2);     %vector orthonormal to v and x2
    x3=x3/sqrt(x3*x3');
    
    r1x=r1(1);r1y=r1(2);r1z=r1(3);
    r2x=r2(1);r2y=r2(2);r2z=r2(3);
    vx=v(1);vy=v(2);vz=v(3);
    x2x=x2(1);x2y=x2(2);x2z=x2(3);
    x3x=x3(1);x3y=x3(2);x3z=x3(3);
    
    time=linspace(0,1,m);
      t=time(1);
      X(1, :) = r1x+(r2x-r1x)*(t)+cos(ph)*t-sin(ph)*A*sin(2*pi*Ns*t); 
      Y(1, :) = r1y+(r2y-r1y)*(t)+sin(ph)*t+cos(ph)*A*sin(2*pi*Ns*t); 
      Z(1, :) = r1z+(r2z-r1z)*(t);
      t=time(m);
      X(m, :) = r1x+(r2x-r1x)*(t)+cos(ph)*t-sin(ph)*A*sin(2*pi*Ns*t); 
      Y(m, :) = r1y+(r2y-r1y)*(t)+sin(ph)*t+cos(ph)*A*sin(2*pi*Ns*t); 
      Z(m, :) = r1z+(r2z-r1z)*(t);
    for j = 2 : m-1
      t=time(j);
      X(j, :) = r1x+(r2x-r1x)*(t)+R*cos(theta)*x2x+R*sin(theta)*x3x+cos(ph)*t-sin(ph)*A*sin(2*pi*Ns*t); 
      Y(j, :) = r1y+(r2y-r1y)*(t)+R*cos(theta)*x2y+R*sin(theta)*x3y+sin(ph)*t+cos(ph)*A*sin(2*pi*Ns*t); 
      Z(j, :) = r1z+(r2z-r1z)*(t)+R*cos(theta)*x2z+R*sin(theta)*x3z;
    end

    surf(X, Y, Z,'FaceColor',col,'FaceAlpha',1,'EdgeColor', 'none');