function Iout = MySmooth(I)

Iout = zeros(size(I));
[rows, columns] = size(I);
for i = 1:rows
    for j = 1:columns
       sum = I(i,j);
       if(i>1 && j>1)
           sum = sum + I(i-1,j-1);
       end
       if(i>1)
           sum = sum + I(i-1,j);
       end
       if(i>1 && j<columns)
           sum = sum + I(i-1, j+1);
       end
       if(j<columns)
           sum = sum + I(i, j+1);
       end
       if(i<rows && j<columns)
           sum = sum + I(i+1, j+1);
       end
       if(i<rows)
           sum = sum + I(i+1, j);
       end
       if(i<rows && j>1)
           sum = sum + I(i+1, j-1);
       end
       if(j>1)
           sum = sum + I(i, j-1);
       end
       
       Iout(i,j) = sum / 9;
    end
end

end