v1 = input('Введіть координати першого вектора [v1x, v1y, v1z]: ');
v2 = input('Введіть координати другого вектора [v2x, v2y, v2z]: ');

dot_product = dot(v1, v2);

if dot_product == 0
    disp('Вектори є перпендикулярними.');
else
    disp('Вектори не є перпендикулярними.');
end

