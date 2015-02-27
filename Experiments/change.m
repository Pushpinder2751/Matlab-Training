vid = videoinput('winvideo',1,'RGB24_320x240');

triggerconfig(vid,'manual');
set(vid,'FramesPerTrigger',1);
set(vid,'TriggerRepeat',1000000);
start(vid);

trigger(vid)
image1=getdata(vid,1);
pause(1)
trigger(vid)
image2=getdata(vid,1);

image11=im2bw(image1);
subplot(2,3,1)
imshow(image11);

image22=im2bw(image2);
subplot(2,3,2)
imshow(image22)

img=image22-image11;
img=bwareaopen(img,50);
subplot(2,3,3)
imshow(img);

[x y]=find(img==1);
if (length(x)>2500)
       
    s=wavread('C:\Users\MyWorld\Music\beep.wav');
    sound(s,40000); 
else
    s=wavread('C:\Users\MyWorld\Music\beep.wav');
    sound(s,20000);
end