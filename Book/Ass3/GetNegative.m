function [ Ineg ] = GetNegative( I )

Ineg = zeros(size(I));
[r,c] = size(I);
for i = 1:r
    for j = 1:c
        Ineg(i,j) = 255 - I(i,j);
    end
end

end

