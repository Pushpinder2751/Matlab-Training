s=serial('COM7')
set(s,'BaudRate',9600,'DataBits',8,'Parity','None','StopBits',1,'FlowControl','None');
fopen(s);
A=[5]
tic
fwrite(s, A);
toc