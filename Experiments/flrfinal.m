vid=videoinput('winvideo');
vid=videoinput('winvideo',1,'YUY2_640x480'); %to select a specific format
set(vid,'ReturnedColorSpace','rgb'); %to change format to rgb
triggerconfig(vid,'manual');
set(vid,'FramesPerTrigger',1);%captures 1 pic per trigger
set(vid,'TriggerRepeat',10000000); % to avoid the camra to sleep on its own 
dio1=digitalio('parallel','lpt1');
outreg=addline(dio1,0:3,0,'out');
start(vid)
while(1)
trigger(vid)
i=getdata(vid,1);
i_r=i(1:480,1:640,1);%extracts the red part
i_g=i(1:480,1:640,2);%extracts the green part
i_b=i(1:480,1:640,3);%extracts the blue part
i_r1=im2bw(i_r,230/255);%filters the red below 116
i_g1=im2bw(i_g,225/255);%filters the green below 116
i_b1=im2bw(i_b,225/255);%filters the blue below 116
i_result=i_r1-i_b1;%subtracts blue from red part
i_result=i_result-i_g1;%subtracts green from red part
i_result=i_result*255;
i_result=uint8(i_result);
i_result=bwareaopen(i_result,40);
i_result=imfill(i_result,'holes');
i2(:,:,1)=double(i(:,:,1)).* double(i_result);%changes the images to double for matrix multiplication(kind?)
i2(:,:,2)=double(i(:,:,2)).* double(i_result);
i2(:,:,3)=double(i(:,:,3)).* double(i_result);
[x y]=bwlabel(i_result);
d=0;
x11=0;
y11=0;
subplot(1,2,1)
imshow(i)
title('original image')
if y >0
[x1 y1]=find(x==1);
x11=round((mean(x1)));
y11=round((mean(y1)));
m=(320-y11)/(240-x11);
if x11 < 240
for k=(x11):240;
    l=fix((k-x11)*m)+y11;
    i2(k,l,1)=0;
    i2(k,l,2)=255;
    i2(k,l,3)=0;
    d=d+1;
end
end
if x11 > 240
   for k=(x11):-1:240;
    l=fix((k-x11)*m)+y11;
    i2(k,l,1)=0;
    i2(k,l,2)=255;
    i2(k,l,3)=0;
    d=d+1;
   end 
end

if ((x11<480)&&(y11<360)&&(x11>280)&& (y11>280))
    putvalue(dio1,[0 1 1 0]) %calling the function 4 fwd%
    pause(.01)
    putvalue(dio1,[0 0 0 0]) %calling the function 4 stop%
    pause(.4)
    subplot(1,2,2)
    imshow(i2)
    a='ball ahead ';
    l= ' distance=';
    g= num2str(d);
    title(strcat(a,l,g));
    drawnow;

elseif ((x11<199)&&(y11<360)&&(x11>1)&& (y11>280))
    putvalue(dio1,[0 1 1 0])%calling the function 4 back%
    pause(.01)
    putvalue(dio1,[0 0 0 0])%calling the function 4 stop%
    pause(.4)
    subplot(1,2,2)
    imshow(i2)
    a='ball behind ';
    l= ' distance=';
    g= num2str(d);
    title(strcat(a,l,g));
    drawnow;
elseif ((x11<480)&&(y11<279)&&(x11>1)&& (y11>1))
    putvalue(dio1,[0 1 0 1])%calling the function 4 left%
    pause(.01)
    putvalue(dio1,[0 0 0 0])%calling the function 4 stop%
    pause(.4)
    subplot(1,2,2)
    imshow(i2)
    a='ball left ';
    l= ' distance=';
    g= num2str(d);
    title(strcat(a,l,g));
    drawnow;
elseif ((x11<480)&&(y11<640)&&(x11>1)&& (y11>361))
    putvalue(dio1,[1 0 1 0])%calling the function 4 right,has to be changed acc to d bot%
    pause(.01)
    putvalue(dio1,[0 0 0 0])%calling the function 4 stop%
    pause(.4)
    subplot(1,2,2)
    imshow(i2)
    a='ball right ';
    l= ' distance=';
    g= num2str(d);
    title(strcat(a,l,g));
    drawnow;
else
    putvalue(dio1,[0 0 0 0])
    subplot(1,2,2)
    imshow(i2)
    title('ball stop');
    drawnow;

end
end
end