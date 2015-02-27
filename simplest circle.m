image(1:768,1:1024,1:3)=255;
image= uint8(image);
for i=1:360
    x=fix(200 + 100*cos(i));
    y=fix(200 + 100*sin(i));
    image(x,y,1:3)=0;
end
imshow(image)