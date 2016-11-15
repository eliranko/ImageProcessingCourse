function [ Iout ] = FloydSteinberg( I, T )

Iout = zeros(size(I));
[r,c] = size(I);
for i = 1:r
    for j = 1:c
        %Thresholding
        if(I(i,j) < T)
            Iout(i,j) = 0;
        else
            Iout(i,j) = 1;
        end
        quan_error = I(i,j) - 255*Iout(i,j);
        
        if(j < c)
            I(i,j+1) = I(i,j+1) + (3*quan_error)/8;
        end
        
        if(j < c && i < r)
            I(i+1,j+1) = I(i+1,j+1) + quan_error/4;
        end
        
        if(i < r)
            I(i+1,j) = I(i+1,j) + (3*quan_error)/8;
        end
    end
end

end

