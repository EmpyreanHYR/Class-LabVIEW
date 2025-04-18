% test function
% CX=xrootandcubic(4)
% We can get CX=8

function CX = xrootandcubic(X)
% main function
XXX = X.*X.*X;
CX=myroot(XXX);
end

function rootX=myroot(Y)
% called function
rootX=sqrt(Y);
end