entries = [1 1 2 1 2 3 1 2 3 4 1 2 3 4 5];

figure;
hist(entries, 5);
xlabel('Кількість автомобілів');
ylabel('Частота');
title('Гістограма кількості автомобілів');

figure;
amount = hist(entries, 5);
bar(1:5, amount);

xlabel('Кількість автомобілів');
ylabel('Частота');
title('Стовпчаста діаграма кількості автомобілів');

