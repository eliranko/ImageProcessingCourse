function [ Iout ] = Q1_1( Iin )
%Q1_1 dithering grayscale image to 8 gray levels image
%   This is done using error diffusion

Iout = zeros(size(Iin));
[r,c] = size(Iin);
for i = 1:r
    for j = 1:c
        Iout = floor(Iin(i,j)/32);
        
        quan_error = Iin(i,j) - 32*Iout(i,j);
        
        if(j < c)
            Iin(i,j+1) = Iin(i,j+1) + (3*quan_error)/8;
        end
        
        if(j < c && i < r)
            Iin(i+1,j+1) = Iin(i+1,j+1) + quan_error/4;
        end
        
        if(i < r)
            Iin(i+1,j) = Iin(i+1,j) + (3*quan_error)/8;
        end
    end
end

end

