vid=videoinput('winvideo');
vid=videoinput('winvideo',1,'YUY2_640x480'); %to select a specific format
set(vid,'ReturnedColorSpace','rgb'); %to change format to rgb
triggerconfig(vid,'manual');
set(vid,'FramesPerTrigger',1);%captures 1 pic per trigger
set(vid,'TriggerRepeat',10000000); % to avoid the camra to sleep on its own
start(vid);
v=wavread('C:\Users\pushpindersingh\Downloads\beep.wav');
while(1)
    trigger(vid)
    image1=getdata(vid,1);
    pause(.2);
    trigger(vid)
    image2=getdata(vid,1);
    %image11=im2bw(image1);
    %image22=im2bw(image2);
    subplot(2,3,1)
    imshow(image1);
    title('original image')
    subplot(2,3,2)
    imshow(image2);
    title('new image')
    img=image2-image1;
    img=im2bw(img);
    img=bwareaopen(img,50);
    img=imfill(img,'holes');
    subplot(2,3,3)
    imshow(img);
    m=0;
    for i=1:640
        for j=1:480
            if img(j,i)==1
                m=m+1;
            end
        
        end
    end
    if m>500
        sound(v,40000)
    end
    l= 'Movement=';
    g= num2str(m);
    title(strcat(l,g));
end