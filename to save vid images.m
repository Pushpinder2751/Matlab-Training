vid=videoinput('winvideo')
vid=videoinput('winvideo',1,'YUY2_640x480')
set(vid,'ReturnedColorSpace','rgb') 
triggerconfig(vid,'manual')
set(vid,'FramesPerTrigger',1)
set(vid,'TriggerRepeat',10000000) 
start(vid)
x=[];
for i=1:10
trigger(vid);
image=getdata(vid,1);
i=image;
x=[x image];
imshow(image);
end

