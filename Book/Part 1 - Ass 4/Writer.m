function [ ] = Writer( I )

fileId = fopen('a.bin', 'w');
fwrite(fileId, I, 'uint8');
fclose(fileId);

end

