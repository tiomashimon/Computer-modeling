u=[0:0.05*pi:2*pi]';
v=[0:0.05*pi:2*pi];
X=airy(u)*cos(v);
Y=cos(u)*sin(v);
Z=sin(u)*ones(size(v));

figure;
plot3(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Графік функції');

