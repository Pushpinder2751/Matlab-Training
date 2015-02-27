i1(1:200,1:400,1:3)=255;
i1=uint8(i1);
b=150;
m=0;
for a=50:100:400
    b=b-30;
for i=a:a+50
for j=b:200
i1(j,i,1)=m;
i1(j,i,2)=0;
i1(j,i,3)=0;
end
end
m=m+63.75;
pause(2)
imshow(i1)
end