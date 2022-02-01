s=${scalefactor};
cl1 = 0.05*s;
cl2 = 0.01*s;
h_on_l = ${h_on_L};
Point(1) = {-1, -1, 0, cl1};
Point(2) = {1, -1, 0, cl1};
Point(3) = {1, 0, 0, 0.2*cl1};
Point(4) = {0, 0, 0, cl2};
Point(5) = {-1, 0, 0, 0.2*cl1};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 5};
Line(5) = {5, 1};
Line Loop(11) = {3, 4, 5, 1, 2};
Plane Surface(11) = {11};
Physical Line(6) = {1};
Physical Line(7) = {2};
Physical Line(8) = {3, 4};
Physical Line(9) = {5};
Physical Surface(12) = {11};
Field[1] = MathEval;
Field[1].F = Sprintf("%f*(.1+%f*sqrt(x*x+y*y))",cl2,h_on_l);
Background Field = 1;