% test function
% [CX ,XYZ ] = XYZandrootXYZ(4,4,4)
% We can get CX = 8, XYZ = 64

function [CX ,XYZ ] = XYZandrootXYZ(X,Y,Z)
% main function
XYZ = X.*Y.*Z;
CX = sqrt(XYZ);
end

