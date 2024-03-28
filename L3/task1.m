while true
    x = input('Enter x: ');
    if x <= 0
        result = (1 + x^3)/(sqrt(4 + x^4));
    elseif x > 0
        result = 2*x + (cos(x)^2)/(5+x);
    end
    
    disp(result);
    
    ans = menu('Do you want to continue?', 'yes', 'no');
    
    if ans == 2
        break;
    end
end

