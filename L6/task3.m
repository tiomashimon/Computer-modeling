entries = [
    1 1 2 1 8 3 1 2 3 4 1 2 3 9 5;
    1 3 1 2 3 10 5 3 4 1 2 3 4 5 1;
    2 7 2 13 1 2 3 14 1 2 3 4 2 1 2
];

daily_sum = sum(data, 2);

figure;
pie(daily_sum, {'День 1', 'День 2', 'День 3'});
title('Сума автомобілів кожного дня протягом трьох днів');

