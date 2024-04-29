grades = [98, 90, 76, 64, 92, 79, 80, 80, 55, 83, 87, 90, 59, ];

figure;
hist(grades);
xlabel('Оцінки');
ylabel('Частота');
title('Гістограма оцінок студентів');

figure;
bar(1:numel(grades), grades);
xlabel('Оцінки');
ylabel('Частота');
title('Гістограма оцінок студентів');


