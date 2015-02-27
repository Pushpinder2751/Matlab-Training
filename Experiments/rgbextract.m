image=imread('C:\Users\MyWorld\Pictures\random\rgb.jpg');
imshow(image)

img_r=image(1:864,1:1152,1);
img_g=image(1:864,1:1152,2);
img_b=image(1:864,1:1152,3);

figure,imshow(img_r)
figure,imshow(img_g)
figure,imshow(img_b)

%for red
img_r1=im2bw(img_r,223/255);
figure,imshow(img_r1)
img_g1=im2bw(img_g,220/255);
figure,imshow(img_g1)
img_b1=im2bw(img_b,220/255);
figure,imshow(img_b1)

fin=img_r1-img_g1;
final=fin-img_b1;
figure,imshow(final)

final=final*255;
final=uint8(final);

final=bwareaopen(final,500);
figure,imshow(final)
image1(:,:,1)=double(image(:,:,1)).*double(final);
image1(:,:,2)=double(image(:,:,2)).*double(final);
image1(:,:,3)=double(image(:,:,3)).*double(final);
image1=uint8(image1);
figure,imshow(image1)

%for green
img_r1=im2bw(img_r,220/255);
figure,imshow(img_r1)
img_g1=im2bw(img_g,223/255);
figure,imshow(img_g1)
img_b1=im2bw(img_b,220/255);
figure,imshow(img_b1)

fin=img_g1-img_r1;
final=fin-img_b1;
figure,imshow(final)

final=final*255;
final=uint8(final);

final=bwareaopen(final,500);
figure,imshow(final)
image1(:,:,1)=double(image(:,:,1)).*double(final);
image1(:,:,2)=double(image(:,:,2)).*double(final);
image1(:,:,3)=double(image(:,:,3)).*double(final);
image1=uint8(image1);
figure,imshow(image1)

img_r1=im2bw(img_r,220/255);
figure,imshow(img_r1)
img_g1=im2bw(img_g,220/255);
figure,imshow(img_g1)
img_b1=im2bw(img_b,223/255);
figure,imshow(img_b1)

fin=img_b1-img_r1;
final=fin-img_g1;
figure,imshow(final)

final=final*255;
final=uint8(final);

final=bwareaopen(final,500);
figure,imshow(final)
image1(:,:,1)=double(image(:,:,1)).*double(final);
image1(:,:,2)=double(image(:,:,2)).*double(final);
image1(:,:,3)=double(image(:,:,3)).*double(final);
image1=uint8(image1);
figure,imshow(image1)
