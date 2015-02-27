image=imread('C:\Users\MyWorld\Pictures\random\edge.jpg');
img=image(1:400,1:400,1:3);
imshow(img);
t=0;
k=0;
for p=1:2:400
    t=t+1;
    k=0;
for q=1:2:400
k=k+1;
u=double(img(p,q,1))+double(img(p,q+1,1))+double(img(p+1,q,1))+double(img(p+1,q+1,1));
u=round(u);
x(t,k,1)=u/4;

v=double(img(p,q,2))+double(img(p,q+1,2))+double(img(p+1,q,2))+double(img(p+1,q+1,2));
v=round(v);
x(t,k,2)=v/4;

w=double(img(p,q,3))+double(img(p,q+1,3))+double(img(p+1,q,3))+double(img(p+1,q+1,3));
w=round(w);
x(t,k,3)=w/4;
r
round(x);


end
end
x=uint8(x);
imshow(x);