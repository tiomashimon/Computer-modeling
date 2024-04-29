temperature = randi([10, 30], 1, 7);

figure;

subplot(2,1,1);
hist(temperature);
xlabel('Температура (°C)');
ylabel('Частота');
title('Гістограма температури за 7 днів');

subplot(2,1,2);
bar(1:numel(temperature), temperature);
xlabel('Дні');
ylabel('Температура (°C)');
title('Лінійчатий графік температури за 7 днів');

