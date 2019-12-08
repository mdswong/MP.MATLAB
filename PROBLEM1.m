% University of Santo Tomas
% Faculty of Engineering
% Electronics Engineering Department
% First Term, AY 2019-2020

% Machine Problem
% ECE2112: Advanced Computer Programming and Algorithms

% Marvin Dale Wong & Aaron Vincent Zabala
% 2ECE-A

%{

Write a program that will implement the function

f(n) = {(n^2)?7, n<9
       {f(n?10), n>=10

where n is an integer and n >= 0. Using your program, graph f(n) from n = 0 
to n = 99 using stem(). Provided with figures, describe and comment on the
graph f(n).

%}

x = linspace(0,99);
y = linspace(0,99);

% use counter to implement the function.
for counter = 1:1:100
    n = counter;
    while n >=10
        n = n-10;
    end
    if n == 9
        y(counter) = NaN;
    end
    y(counter) = n^2-7;
end

stem(x,y), grid on

title('Graph of function(n)')
xlabel('x axis')
ylabel('y axis')