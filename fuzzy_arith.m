N = 15;
min_inflow = -10;
max_inflow = 350;
Inflow = linspace(min_inflow,max_inflow,N);

low_inflow = trimf(Inflow,[72 109.5 147]);
medium_inflow = trimf(Inflow,[132 170 208]);

Csum = fuzarith(Inflow,low_inflow,medium_inflow,'sum');
Csub = fuzarith(Inflow,low_inflow,medium_inflow,'sub');
Cprod = fuzarith(Inflow,low_inflow,medium_inflow,'prod');
Cdiv = fuzarith(Inflow,low_inflow,medium_inflow,'div');

figure
subplot(2,1,1)
plot(Inflow,low_inflow,'--',Inflow,medium_inflow,':',Inflow,Csum,'c')
title('Fuzzy Addition, LI+MI')
legend('LI','MI','LI+MI')

subplot(2,1,2)
plot(Inflow,low_inflow,'--',Inflow,medium_inflow,':',Inflow,Csub,'c')
title('Fuzzy Subtraction, LI-MI')
legend('LI','MI','LI-MI')

figure
subplot(2,1,1)
plot(Inflow,low_inflow,'--',Inflow,medium_inflow,':',Inflow,Cprod,'c')
title('Fuzzy Multiplication, LI*MI')
legend('LI','MI','LI*MI')

subplot(2,1,2)
plot(Inflow,low_inflow,'--',Inflow,medium_inflow,':',Inflow,Cdiv,'c')
title('Fuzzy Division, LI/MI')
legend('LI','MI','LI/MI')
