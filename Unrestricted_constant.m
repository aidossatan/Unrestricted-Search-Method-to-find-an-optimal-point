func =  @(x) x.^2-sin(x);
x_start = 6;
f_start = func(x_start);
step = 0.5;

x_next = x_start + step;
f_next = func(x_next);

iteration = 1;
disp('iteration  x_start  f(x_start)  x_next  f(x_next)')

if f_start > f_next
    while f_start > f_next 
        disp([iteration', x_start', func(x_start)', x_next', func(x_next)',])

        x_start = x_next;
        f_start = func(x_start);
        x_next = x_start + step; 
        f_next = func(x_next);
        iteration = iteration + 1;
    end
else
    step = (-1)*step; 
    x_next = x_start + step; 
    f_next = func(x_next);
    while f_start > f_next 
        disp([iteration', x_start', func(x_start)', x_next', func(x_next)',])

        x_start = x_next;
        f_start = func(x_start);
        x_next = x_start + step;  
        f_next = func(x_next);
        iteration = iteration + 1;
    end  
end

fprintf('The optimum point of the function is %5.4f', x_start)