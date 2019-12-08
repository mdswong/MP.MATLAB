% University of Santo Tomas
% Faculty of Engineering
% Electronics Engineering Department
% First Term, AY 2019-2020

% Machine Problem
% ECE2112: Advanced Computer Programming and Algorithms

% Marvin Dale Wong & Aaron Vincent Zabala
% 2ECE-A

%{

Write a program that accepts as input three points (x,y) lying on a circle 
in a 2-dimensional Cartesian plane. The program must return the following 
parameters of the circle on which the three points lie:
    
    - center(h,k);
    - radius r;
    - vector [D, E, F] where D, E, and F are the coefficients in the 
      general equations of a circle x^2 + y^2 + Dx + Ey + F = 0;

Recall from your analytic geometry/pre-calculus class that the standard and 
general equations, respectively, are given as

(x?h)^2 + (y-k)^2 = r^2
x^2 + y^2 + Dx + Ey + F = 0

Hint: An easier way to solve this is to form a system of equations solving 
D, E, and F. Once, D, E, and F are solved, one can determine the general 
form. From the general form, competing the square can be applied to 
transform the general equation to the standard form to determine the center 
and the radius of the circle.

%}

x1 = input('Input the x-coordinate of the first point lying on a circle: ');
y1 = input('Input the y-coordinate of the first point lying on a circle: ');
x2 = input('Input the x-coordinate of the second point lying on a circle: ');
y2 = input('Input the y-coordinate of the second point lying on a circle: ');
x3 = input('Input the x-coordinate of the third point lying on a circle: ');
y3 = input('Input the y-coordinate of the third point lying on a circle: ');

% original equation: x^2 + y^2 + D*x + E*y + F = 0
b1 = -(x1)^2 - (y1)^2;
b2 = -(x2)^2 - (y2)^2;
b3 = -(x3)^2 - (y3)^2;

% solving for vector [D,E,F}
B = [b1; b2; b3];
A = [x1 y1 1; x2 y2 1; x3 y3 1];
d = [b1 y1 1; b2 y2 1; b3 y3 1];
e = [x1 b1 1; x2 b2 1; x3 b3 1];
f = [x1 y1 b1; x2 y2 b2; x3 y3 b3];
D = det(d)/det(A);
E = det(e)/det(A);
F = det(f)/det(A);

fprintf('\n')
disp('vector [D,E,F]:')
disp([D, E, F])

% the general form: x^2 + y^2 + Dx + Ey + F = 0
% x^2 + D*x + y^2 + E*y = -F
square1 = ((1/2)*D)^2;
square2 = ((1/2)*E)^2;
% completing the square:
% (x^2 + Dx + square1) + (y^2 + Ey + square2) = -F + square1 + square 2
rightS = -F + square1 + square2;
h = (D*(1/D))*sqrt(square1);
k = (E*(1/E))*sqrt(square2);
% standard equation of a circle: (x - h)^2 + (y - k)^2 = rightS

disp('The standard equation of the circle:')
fprintf('(x - (%.2f))^2 + (y - (%.2f))^2 = %.2f', h,k,rightS)
fprintf('\n')
fprintf('\nThe center of the circle is at ')
fprintf('(%.2f,%.2f).', h, k)

r = sqrt(rightS);
fprintf('\nThe radius of the circle is %.2f units.\n', r)