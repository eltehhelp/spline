function res = G(xx,x,f,M)
% �������� ������ � x, f; � � �������� ������ �����������
n=size(x);
n=n(2);
h=zeros(1,n-1);
% ���������� ����

for i=1:n-1
    h(i)=x(i+1) - x(i);
end;

for j=1:length(xx)
    X=xx(j);
    % ����������� ������ ���������
    for i=1:n-1
        if x(i)<=X && X<x(i+1)
            k=i;
            break
        end; 
    end;
    % ���������� �������� ������� � ������������� �����
    yy(j)=M(k)*((x(k+1)-X)^3)/(6*h(k)) + M(k+1)*((X-x(k))^3)/(6*h(k)) +...      
(f(k)-M(k)*(h(k)^2)/6)*(x(k+1)-X)/h(k)+...
(f(k+1)-M(k+1)*(h(k)^2)/6)*(X-x(k))/h(k);
end;
res=yy;
return

