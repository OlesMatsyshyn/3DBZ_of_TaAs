function edge2mp(P1,P2,fl,cl)
Pe = (P1+P2)/2;
s = size(P1);
s2 = s(2);
s = s(1);
scale = 5;
r = 0.002*scale;
n = 80;
scale = 5;

for i = 1 :s
    cylindermp(r,n,[P1(i,1) P1(i,2) P1(i,3)],[P2(i,1) P2(i,2) P2(i,3)],fl,cl);
    
end

end