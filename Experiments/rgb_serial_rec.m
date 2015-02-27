s=serial('COM1');
set(s,'InputBufferSize',100000);
set(s,'OutputBufferSize',100000);
set(s,'BaudRate',9600,'DataBits',8,'Parity','none','StopBits',1,'FlowControl','none','TimeOut',40);
fopen(s);
while(1)
  if s.BytesAvailable==10000
      i_r=fread(s,10000);
      i_r=i_r';
      break;
  end
end
while(1)
  if s.BytesAvailable==10000
      i_g=fread(s,10000);
      i_g=i_g';
      break;
  end
end
while(1)
  if s.BytesAvailable==10000
      i_b=fread(s,10000);
      i_b=i_b';
      break;
  end
end
i1=reshape(i_r,100,100);
i2=reshape(i_g,100,100);
i3=reshape(i_b,100,100);
img(:,:,1)=i1;
img(:,:,2)=i2;
img(:,:,3)=i3;
img=uint8(img);
imshow(img)
