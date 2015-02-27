i(1:400,1:400,1:3)=255;
i=uint8(i);
for x=51:321;
    y=fix((x-51)*0.073)+90;
    i(y,x,1:3)=0;
end
imshow(i)