function edge2(P1,P2)
Pe = (P1+P2)/2;
s = size(P1);
s2 = s(2);
s = s(1);
scale = 5;
r = 0.0025*scale;
n = 80;
scale = 5;
szu = 1.1;
rTa = szu*0.11*scale/12.5;
rAr = szu*0.11*scale/12.5;

s = size(P1);
dp12= P2-P1;

for i = 1 : s(1)
    
        absv = sqrt(sum((P2(i,:)-P1(i,:)).^2));
        P1(i,:) = P1(i,:) +rAr*dp12(i,:)/absv;
        P2(i,:) = P2(i,:) -rTa*dp12(i,:)/absv;
end

% for i = 1 :s
%     for j =1:s2
%    P1(i,j) = P1(i,j) + rTa*(P2(i,j)-P1(i,j))/(sqrt(sum((P2(i,:)-P1(i,:)).^2))); 
%     end
% end
for i = 1 :s
    cylinder2PAs(r,n,[P1(i,1) P1(i,2) P1(i,3)],[Pe(i,1) Pe(i,2) Pe(i,3)]);
    cylinder2PAs(1.*r,n,[Pe(i,1) Pe(i,2) Pe(i,3)],[P2(i,1) P2(i,2) P2(i,3)]);
end

end