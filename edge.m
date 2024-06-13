function edge(P1,P2)
Pe = (P1+P2)/2;
s = size(P1);
s2 = s(2);
s = s(1);
scale = 5;
r = 0.005*scale;
n = 80;
scale = 5;
rTa = 0.15*scale;
rAr = 0.1*scale;
% for i = 1 :s
%     for j =1:s2
%    P1(i,j) = P1(i,j) + rTa*(P2(i,j)-P1(i,j))/(sqrt(sum((P2(i,:)-P1(i,:)).^2))); 
%     end
% end
for i = 1 :s
    cylinder2Pc2(r,n,[P1(i,1) P1(i,2) P1(i,3)],[Pe(i,1) Pe(i,2) Pe(i,3)]);
    cylinder2P(1.*r,n,[Pe(i,1) Pe(i,2) Pe(i,3)],[P2(i,1) P2(i,2) P2(i,3)]);
end

end