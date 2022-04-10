function result = KwadraturaSimpsonaMain(f, xn, yn)
% Autor: Jan Palmer 313429
%
% Funkcja KwadraturaSimpsonaMain zwraca wartosc calki podwojnej funkcji
% 'f' na obszarze D = {(x, y) ∈ R^2 : x^2 + y^2 <= 1}. Do osiagniecia
% tego celu obszar calkowania zostaje przetransformowany na kwadrat
% [-1, 1]x[-1, 1], po czym wartosc calki zostaje obliczona przy pomocy
% metody zlozonych kwadratur Simpsona ze wzgledem na obie zmienne.
% WEJSCIE:
%        f - uchwyt do badanej funkcji ciaglej dwoch zmiennych
%       xn - ilosc podprzedzialow zlozonej kwadratury Simpsona na osi x
%       yn - ilosc podprzedzialow zlozonej kwadratury Simpsona na osi y
% WYJSCIE:
%   result - wartosc calki obliczona przy pomocy zlozonej kwadratury
%            Simpsona

START = -1;
END = 1;

f1 = @(x, y) 0.5*(x + 1)*cos(pi*(y + 1));
f2 = @(x, y) 0.5*(x + 1)*sin(pi*(y + 1));
detJ =@(x, y) (x+1)*pi/4;
func = @(x, y) f(f1(x,y), f2(x,y))*abs(detJ(x, y));

result = Simpson(func, START, END, xn, yn);

end % function