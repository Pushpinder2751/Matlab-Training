i1(1:200,1:400,1:3)=255;
i1=uint8(i1);
i2=i1;
for i=50:100
for j=120:200
i1(j,i,1)=255;
i1(j,i,2)=0;
i1(j,i,3)=0;
end
end
imshow(i1)