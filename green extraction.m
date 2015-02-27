i=imread('C:\Users\pushpindersingh\Downloads\fruit.jpg');
i_r=i(1:333,1:500,1);%extracts the red part
i_g=i(1:333,1:500,2);%extracts the green part
i_b=i(1:333,1:500,3);%extracts the blue part
i_r1=im2bw(i_r,79/255);%filters the red below 116
i_g1=im2bw(i_g,110/255);%filters the green below 116
i_b1=im2bw(i_b,79/255);%filters the blue below 116
i_result=i_g1-i_r1;%subtracts blue from red part
i_result=i_result-i_b1;%subtracts green from red part
i_result=i_result*255;
i_result=uint8(i_result);
i_result=bwareaopen(i_result,10);
i_result=imfill(i_result,'holes');
figure,imshow(i_result)
i=i(1:333,1:500,1:3);%changes the image into 200*400 for matrix multiplication
i2(:,:,1)=double(i(:,:,1)).* double(i_result);%changes the images to double for matrix multiplication(kind?)
i2(:,:,2)=double(i(:,:,2)).* double(i_result);
i2(:,:,3)=double(i(:,:,3)).* double(i_result);
i2=uint8(i2);%converts back to uint8 to show image
imshow(i2)
figure,imshow(i)