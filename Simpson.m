function sum = Simpson(fun, START, END, xn, yn)
% Autor: Jan Palmer 313429

% Funkcja Simpson oblicza wartosc calki podwojnej na obszarze kwadratu
% [START, END]x[START,END], przy pomocy zlozonej kwadratury Simpsona.
% WEJSCIE:
%           f - uchwyt do badanej funkcji ciaglej dwoch zmiennych
%  START, END - granice kwadratu. START <=END
%          xn - ilosc podprzedzialow zlozonej kwadratury Simpsona na osi x
%          yn - ilosc podprzedzialow zlozonej kwadratury Simpsona na osi y
% WYJSCIE:
%         sum - wartosc calki obliczona przy pomocy zlozonej kwadratury
%               Simpsona

H1 = (END - START)/xn;
H2 = (END - START)/yn;
mx = linspace(START, END, 2*xn + 1);
my = linspace(START, END, 2*yn + 1);
CoefsX = SimpsonCoefs(xn);
CoefsY = SimpsonCoefs(yn);
sum = 0;

for i = 1:(2*yn+1)
    for j = 1:(2*xn+1)
        fx = H1*H2*CoefsX(j)*CoefsY(i)*fun(mx(j), my(i));
        sum = sum + fx;
    end % for
end % for
sum = sum/36;

end %function