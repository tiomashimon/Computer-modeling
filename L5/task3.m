[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);

z = x.^2 + y.^2;

figure;
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Каркасна поверхня z(x, y)');
grid on;

figure;
contour(x, y, z);
xlabel('x');
ylabel('y');
title('Контурний графік z(x, y)');
colorbar;
grid on;

