function [ Iout ] = CCFinder( I )

Iout = zeros(size(I));
[r,c] = size(I);
counter = 1;
for i = 1:r
    for j = 1:c
        if(I(i,j) == 0) %0 pixels are not part of the CC
            continue;
        end
        
        %Get min
        min = Inf;
        if(i > 1 && Iout(i-1,j) > 0 && Iout(i-1,j) < min)
            min = Iout(i-1,j);
        end
        
        if(j > 1 && Iout(i,j-1) > 0 && Iout(i, j-1) < min)
            min = Iout(i,j-1);
        end
        
        %Set min to adjacent pixels
        if(i > 1 && Iout(i-1,j) > 0 && Iout(i-1,j) > min)
            Iout(i-1,j) = min;
        end
        
        if(j > 1 && Iout(i,j-1) > 0 && Iout(i, j-1) > min)
            Iout(i,j-1) = min;
        end
        
        if(min == Inf)
            Iout(i,j) = counter;
            counter = counter + 1;
        else
            Iout(i,j) = min;
        end
    end
end

end

