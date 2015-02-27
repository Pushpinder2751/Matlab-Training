M1=1;
M2=0.5;
k=1;
F=1;
u=0.002;
g=9.8;
num=[M2 M2*u*g 1];
den=[M1*M2 2*M1*M2*u*g M1*k+M1*M2*u*u*g*g+M2*k M1*k*u*g+M2*k*u*g];
train=tf(num,den)  
step(train)
num1=[3.84]
den1=[1 2.35 3.84]
control=tf(num1,den1)
sys=control*train
rlocus(sys)
step(sys)
impulse(sys)