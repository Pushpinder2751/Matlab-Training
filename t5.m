i1(1:200,1:400,1:3)=255;
i1=uint8(i1);
for y=1:200
    x=fix(2*y);
    i1(y,x,1:3)=0;
end
imshow(i1)