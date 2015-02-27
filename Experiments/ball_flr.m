vid=videoinput('winvideo')
vid=videoinput('winvideo',1,'YUY2_640x480') %to select a specific format
set(vid,'ReturnedColorSpace','rgb') %to change format to rgb
triggerconfig(vid,'manual')
set(vid,'FramesPerTrigger',1)%captures 1 pic per trigger
set(vid,'TriggerRepeat',10000000) % to avoid the camra to sleep on its own 
start(vid)
preview(vid)
trigger(vid)
i=getdata(vid,1);
imshow(i)
stop(vid)
i_r=i(1:900,1:1200,1);%extracts the red part
i_g=i(1:900,1:1200,2);%extracts the green part
i_b=i(1:900,1:1200,3);%extracts the blue part
i_r1=im2bw(i_r,130/255);%filters the red below 116
i_g1=im2bw(i_g,125/255);%filters the green below 116
i_b1=im2bw(i_b,125/225);%filters the blue below 116
i_result=i_r1-i_b1;%subtracts blue from red part
i_result1=i_result-i_g1;%subtracts green from red part
i_result1=i_result1*255;
i_result1=uint8(i_result1);
i_result1=bwareaopen(i_result1,250);
i_result1=imfill(i_result1,'holes');
figure,imshow(i_result1)
[x y]=bwlabel(i_result1);
[x1 y1]=find(x==2);
x11=(mean(x1))
y11=(mean(y1))