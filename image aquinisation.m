imaqhwinfo        %tells about the available tools of image imag aq.
vid=videoinput('winvideo') % makes the variable for the video
hwinfo=imaqhwinfo('winvideo') % info about the device
device1=hwinfo.DeviceInfo(1)
device1.SupportedFormats
vid=videoinput('winvideo',1,'YUY2_640x480') %to select a specific format
set(vid,'ReturnedColorSpace','rgb') %to change format to rgb
triggerconfig(vid,'manual')
set(vid,'FramesPerTrigger',1)%captures 1 pic per trigger
set(vid,'TriggerRepeat',10000000) % to avoid the camra to sleep on its own 
start(vid)
trigger(vid)
image=getdata(vid,1);
imshow(image)
stop(vid)