function r = OHev(A)
s = size(A);
r = 0 * A;
for i = 1 : s(1)
    for j = 1 : s(2)
        if(A(i,j)>0)
            r(i,j) = 1;
        end
        if(A(i,j)==0)
            r(i,j) = 1/2;
        end
    end
    
end


end