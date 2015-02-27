dio2=digitalio('parallel','ltp1');
inreg=addline(dio2,0:1,0,'in');
x=[];
m=0;
while(m<40000)
    y=getvalue(dio2.line(1));
    if(y==1)
       m=m+1;
        r=getvalue(dio2.line(2));
        x=[x r];
        while(y==0)
            y=getvalue(dio2.line(1));
        end
    end
end
z=reshape(x,200,200);