x=[-3 -2 -1 0 1 2 3];
y=[-0.71  -0.01  0.51  0.82  0.88  0.51	0.49];

nm=6;   %?????? ??????? ????????????????? ???????? 
p=polyfit(x,y,nm);   %?????????????? ??????
y1=polyval(p,x);   %%??????????? ???????? y1 ? ??????????? ?? ????????????? ????????
dyt = polyder(p);  %????? ??????????? ?? ????????
dyt2 = polyder(dyt);  %????? ?????? ???????????
dy2 = polyval(dyt2,x)
