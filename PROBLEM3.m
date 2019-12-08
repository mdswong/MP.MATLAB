% University of Santo Tomas
% Faculty of Engineering
% Electronics Engineering Department
% First Term, AY 2019-2020

% Machine Problem
% ECE2112: Advanced Computer Programming and Algorithms

% Marvin Dale Wong & Aaron Vincent Zabala
% 2ECE-A

%{

Given a certain set of experimental points (xi, yi), regardless of how many, 
the program must be able to return the coefficients of the polynomial f(x) 
that would best approximate the data according to the least-norm error vector 
e(x) in Experiment 4, i.e.

e(xi) = yi ? f(xi)

Limit your polynomials from the 1st degree up to the 10th degree. The set of 
points should be input in the form of an n × 2 matrix where ? is the number of 
experimental data. Note that the data points should only be the user input, 
and not n.

%}

format long e;
pts = input('Points [xi,yi] \n');
x = pts(1,:);
y = pts(2,:);

Poly_1st = polyfit(x, y, 1);
xi1=x;
Val_1st = polyval(Poly_1st, xi1);
Error_1st = y - Val_1st;
Norm_1st = norm(Error_1st);

Poly_2nd = polyfit(x, y, 2);
xi2=x;
Val_2nd = polyval(Poly_2nd, xi2);
Error_2nd = y - Val_2nd;
Norm_2nd = norm(Error_2nd);

Poly_3rd = polyfit(x, y, 3);
xi3=x;
Val_3rd = polyval(Poly_3rd, xi3);
Error_3rd = y - Val_3rd;
Norm_3rd = norm(Error_3rd);

Poly_4th = polyfit(x, y, 4);
xi4=x;
Val_4th = polyval(Poly_4th, xi4);
Error_4th = y - Val_4th;
Norm_4th = norm(Error_4th);

Poly_5th = polyfit(x, y, 5);
xi5=x;
Val_5th = polyval(Poly_5th, xi5);
Error_5th = y - Val_5th;
Norm_5th = norm(Error_5th);

Poly_6th = polyfit(x, y, 6);
xi6=x;
Val_6th = polyval(Poly_6th, xi6);
Error_6th = y - Val_6th;
Norm_6th = norm(Error_6th);

Poly_7th = polyfit(x, y, 7);
xi7=x;
Val_7th = polyval(Poly_7th, xi7);
Error_7th = y - Val_7th;
Norm_7th = norm(Error_7th);

Poly_8th = polyfit(x, y, 8);
xi8=x;
Val_8th = polyval(Poly_8th, xi8);
Error_8th = y - Val_8th;
Norm_8th = norm(Error_8th);

Poly_9th = polyfit(x, y, 9);
xi9=x;
Val_9th = polyval(Poly_9th, xi9);
Error_9th = y - Val_9th;
Norm_9th = norm(Error_9th);

Poly_10th = polyfit(x, y, 10);
xi10=x;
Val_10th = polyval(Poly_10th, xi10);
Error_10th = y - Val_10th;
Norm_10th = norm(Error_10th);

VectorNorm = [Norm_1st, Norm_2nd, Norm_3rd, Norm_4th, Norm_5th, Norm_6th, Norm_7th, Norm_8th, Norm_9th, Norm_10th];
LN = sort(min(VectorNorm));

format short e;
if LN == Norm_1st
    fprintf('The Coefficients of the Polynomial: ');
    disp(Poly_1st)
elseif LN == Norm_2nd
    fprintf('The Coefficients of the Polynomial: ');
    disp(Poly_2nd)
elseif LN == Norm_3rd
    fprintf('The Coefficients of the Polynomial: ');
    disp(Poly_3rd)
elseif LN == Norm_4th
    fprintf('The Coefficients of the Polynomial: ');
    disp(Poly_4th)
elseif LN == Norm_5th
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(Poly_5th)
elseif LN == Norm_6th
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(Poly_6th)
elseif LN == Norm_7th
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(Poly_7th)
elseif LN == Norm_8th
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(Poly_8th)
elseif LN == Norm_9th
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(Poly_9th)
else 
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(Poly_10th)
end