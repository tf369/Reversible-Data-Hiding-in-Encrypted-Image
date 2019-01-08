function Mout = setBlock(M, block, i, j)
h = size(M, 1);
w = size(M, 2);
linear_size = h*w;
s = size(block, 1);
if mod(linear_size, s)~=0
   fprintf(">>>>>>>>>>Dimension of image M is not divisible by s.<<<<<<<<<<\n");
   return;
end

rows=h/s;
cols=w/s;

%k can assume values from 0 to  block_num - 1
if (i < 0 || i > rows - 1)
    fprintf(">>>>>>>>>>Invalid index i.<<<<<<<<<<\n");
    return;
end
if (j < 0 || j> cols - 1)
    fprintf(">>>>>>>>>>Invalid index j.<<<<<<<<<<\n");
    return;
end


Mout=M;

%get B block from 2D coordinates
Mout(i*s+1 : i*s+s, j*s+1 : j*s+s) = block;


end

