% University of Santo Tomas
% Faculty of Engineering
% Electronics Engineering Department
% First Term, AY 2019-2020

% Machine Problem
% ECE2112: Advanced Computer Programming and Algorithms

% Marvin Dale Wong & Aaron Vincent Zabala
% 2ECE-A

%{

For n = 0:199, given the user-input x(n), determine y(n) if

       {-1.5x(n) + 2x(n+1) - 0.5x(n+2), n=0
y(n) = {0.5x(n+1)-0.5x(n-1), 0<n<198
       {1.5x(n) - 2x(n-1) + 0.5x(n-2), n=199

Superimpose the graphs of x(n) and of y(n) with different line colors in one 
figure window. Do not forget to put legends.

%}

% define the vectors x, y, and n
n = (0:1:199);
x = input('Input x(n): ');
y = zeros(size(x));

% loop over the vector n, calculate the values of y
for i=1:length(n)
if n(i) == 0
y(i) = -1.5*x(i) + 2*x(i+1)- 0.5*x(i+2);
elseif n(i) < 199
y(i) = 0.5*x(i+1) - 0.5*x(i-1);
else
y(i) = 1.5*x(i) - 2*x(i-1) + 0.5*x(i-2);
end
end

% plot x(n)
plot(n,x,'r-');
hold on; % hold the current figure

% plot y(n) in the same figure
plot(n,y,'b-');
hold off; % releases the current figure
legend('x(n)','y(n)'); % specify the legend
title('Plot of x(n) and y(n)'); % specify the title