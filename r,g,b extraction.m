i=imread('C:\Users\pushpindersingh\Downloads\fruit.jpg');
 i_r=i(1:200,1:400,1);
i_g=i(1:200,1:400,2);
i_b=i(1:200,1:400,3);
figure,imshow(i_r)
figure,imshow(i_g)
figure,imshow(i_b)
figure,imshow(i);