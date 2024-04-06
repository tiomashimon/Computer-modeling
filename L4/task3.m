t = 0:0.2:2*pi;
y1 = 0.1 * exp(-t);

figure;

plot(t, y1, 'S1', 'Color', 'yellow', 'LineStyle', '--', 'Marker', 's')
hold on

stem(t, y1, 'S1', 'Color', 'yellow', 'LineStyle', '--')

stairs(t, y1, 'S1', 'Color', 'yellow', 'LineStyle', '--')

xlabel('t')
ylabel('y1(t)')
title('Графік функції y1(t) = 0.1e^{-t}')
legend('plot', 'stem', 'stairs')
grid on

