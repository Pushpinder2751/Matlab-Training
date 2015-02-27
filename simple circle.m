image(1:768,1:1024,1:3)=255;
image= uint8(image);
for i=180:220
j= fix(sqrt(400-((i-200)^2))+150)
image(i,j,1:3)=0;
end
for i=180:220
j= fix(-sqrt(400-((i-200)^2))+150)
image(i,j,1:3)=0;
end
imshow(image);