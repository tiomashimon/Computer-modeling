[U, V] = meshgrid(-2:0.1:2, -2:0.1:2);
X = erf(U) .* sin(V);
Y = erf(U) .* cos(V);
Z = sin(U);

surf(X, Y, Z, 'EdgeColor', 'none');
colormap(spring);
colorbar;
title('Плавно залита поверхня');

