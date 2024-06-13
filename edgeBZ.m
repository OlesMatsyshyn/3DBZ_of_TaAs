function edgeBZ(P1,P2,A)

s = size(P1);
s2 = s(2);
s = s(1);
rc = 0.01;
n= 80;

for i = 1 :s
     cylinder2Pcolor(rc,n,[P1(i,1) P1(i,2) P1(i,3)],[P2(i,1) P2(i,2) P2(i,3)],A);
end

end