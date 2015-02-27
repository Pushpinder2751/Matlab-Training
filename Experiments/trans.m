image=img(1:200,1:200,1:3);
image=im2bw(image);
imshow(image)
y=reshape(image,1,40000);
dio1=digitalio('parallel','ltp1');
outreg=addline(dio1,0:1,0,'out');
for i=1:40000
putvalue(dio1.line(2),y(1,i));
putvalue(dio1.line(1),1);
putvalue(dio1.line(1),0);
end