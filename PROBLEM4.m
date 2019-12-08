% University of Santo Tomas
% Faculty of Engineering
% Electronics Engineering Department
% First Term, AY 2019-2020

% Machine Problem
% ECE2112: Advanced Computer Programming and Algorithms

% Marvin Dale Wong & Aaron Vincent Zabala
% 2ECE-A

%{

Create a program that plots the trajectory, from the initial height to the 
ground, of a projectile accelerating both in the horizontal and vertical 
directions. The program must accept the following as inputs:

1. initial height of the projectile above the ground in meters
2. magnitude of velocity in m/s
3. the angle in degrees with respect to the +x-axis at which the projectile 
   is fired
4. x-component of the acceleration
5. y-component of the acceleration

The program must also have error detection for the instance the user inputs 
zero acceleration for the vertical component. (If the vertical acceleration 
is zero, then there would be no free fall.) You may use the error command.
Do not forget to put axis labels and grids on your plot. No restrictions on 
the line style and width. Do not use white for the line color.

%}

% inputs
s0 = input('Enter the value of Initial Height of the Projectile above the ground in meters: ');
v0 = input('Enter the value of Initial Velocity: ');
theta0 = input('Enter the value of the Angle of the Projectile in Degrees: ');
ax = input('Enter the value of the Horizontal Acceleration: ');
ay = input('Enter the value of the Vertical Acceleration: ');

% error detection when the user inputs zero acceleration for the vertical component
if ay == 0
    
    disp('Error! Vertical acceleration cannot be zero.')
    return
    
end

% components of the velocity
V0x = v0 * cosd(theta0);
V0y = v0 * sind(theta0);

t = max(roots([(ay/2),V0y,s0])); %time
displacement = 0:0.01:t; %displacement

x2 = zeros(1, length(displacement) + 1);
y2 = zeros(1, length(displacement) + 1);

t = 0;
y2(1) = s0;

% finding the values of the motion
for i = 1:length(displacement)
    
    xt = (ax * (t^2))/2 + V0x *t;
    yt = (ay * (t^2))/2 + V0y *t + s0;
    
    x2(i+1) = xt;
    y2(i+1) = yt;
   
    t = t+ 0.01;
    
end

plot(x2,y2)

ylim([0, max(y2)+1])

title('Simulation of Projectile Motion')
xlabel('x axis')
ylabel('y axis')