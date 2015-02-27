image(1:400,1:400,1:3)=0;
imshow(image)
a=100
b=100
r=25

for z=1:360;
    
x=a+r*cos(z);
y=b+r*sin(z);
    x=round(x);
    y=round(y);
    image(x,y,1:3)=255;
    
end
image=uint8(image);
figure,imshow(image)
