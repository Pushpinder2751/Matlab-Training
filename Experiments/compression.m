y=imread('C:\Users\pushpindersingh\Downloads\fruit.jpg');
y=double(y);
a=1;
c=1;
for i=1:2:300;
for j=1:2:500;
    r=fix((y(i,j,1)+y(i,j+1,1)+y(i+1,j,1)+y(i+1,j+1,1))/4);
    g=fix((y(i,j,2)+y(i,j+1,2)+y(i+1,j,2)+y(i+1,j+1,2))/4);
    b=fix((y(i,j,3)+y(i,j+1,3)+y(i+1,j,3)+y(i+1,j+1,3))/4);
    image(a,c,1)=r;
    image(a,c,2)=g;
    image(a,c,3)=b;
    c=c+1;
end
c=1;
a=a+1;
end
y=uint8(y);
image=uint8(image);
imshow(image)
figure,imshow(y)