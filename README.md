# Simpsons-Quadrature
A MatLab program which utilizes composite Simpson's Quadrature numerical algorithm to calculate the value of a double integral of a function on an area of (x^2 + y^2) <= 1.
To use the main function, execute the KwadratureSimpsonaMain(f, xn, yn) function. The function takes the following arguments:
   f - a handle to a continuous function of two parameters
  xn - number of subdivisions the quadrature will use on the X axis
  yn - number of subdivisions the quadrature will use on the Y axis
  
The repository also includes two scripts to use for testing.
Script 'test01_funkcje_wybrane' compares the algorithms precision based on the number of subdivisions made to the area.
Script 'test02_funkcje_nieparzyste' creates 5 random odd polynomials and checks their values on the (x^2 + y^2) <= 1 area. Due to the odd polynomials' characteristics, the values should be equal to zero.

LPP1_Palmer_Jan_29.pdf is a raport of the experiment, describing methods used in the algorithm in a theoretical way and going over the numerical verification (precision) of the algorithm.

Made using MatLab R2021a.
