function test01_funkcje_wybrane()
% Autor: Jan Palmer 313429
% 
% Test ten sprawdza dokladnosc przyblizenia kwadratury oraz zmiany
% w bledach pod wzgledem zwiekszajacej sie liczby podprzedzialow. Sprawdza
% on 4 funkcje, dla kazdej obliczajac blad obliczen dla 10, 100 i 500
% podprzedzialow.
% 'Faktyczna wartosc calki' jest obliczana przy pomocy funkcji 'integral2'
% zawartej w programie MATLAB

ymin = @(x) -sqrt(1 - x.*x);
ymax = @(x) sqrt(1 - x.*x);

disp("1. f(x, y) = -5.29*(x^8)*(y^2) - y^4 + 2");
fun = (@(x, y) 2 - 5.29.*x.^8.*y.^2 -y.^4);
a = KwadraturaSimpsonaMain(fun, 10, 10);
b = integral2(fun, -1, 1, ymin, ymax);
disp(['Faktyczna wartosc calki: ' num2str(b)]);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=10: ' num2str(a) ...
    ', Blad: ' num2str(err)]);
a = KwadraturaSimpsonaMain(fun, 100, 100);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=100: ' num2str(a) ...
    ', Blad: ' num2str(err)]);
a = KwadraturaSimpsonaMain(fun, 1000, 500);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=500: ' num2str(a) ...
    ', Blad: ' num2str(err)]);

disp("2. f(x, y) = cos(5.29*x) + 30.125*x^3*y + 5*y^6");
fun = @(x, y) cos(5.29.*x) + 30.125.*x.^3.*y + 5.*y.^6 ;
a = KwadraturaSimpsonaMain(fun, 10, 10);
b = integral2(fun, -1, 1, ymin, ymax);
disp(['Faktyczna wartosc calki: ' num2str(b)]);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=10: ' num2str(a) ...
    ', Blad: ' num2str(err)]);
a = KwadraturaSimpsonaMain(fun, 100, 100);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=100: ' num2str(a) ...
    ', Blad: ' num2str(err)]);
a = KwadraturaSimpsonaMain(fun, 1000, 500);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=500: ' num2str(a) ...
    ', Blad: ' num2str(err)]);

disp("3. f(x, y) = cos(5.29.*x.^11.*y.^2)");
fun = @(x, y) cos(5.29.*x.^11.*y.^2);
a = KwadraturaSimpsonaMain(fun, 10, 10);
b = integral2(fun, -1, 1, ymin, ymax);
disp(['Faktyczna wartosc calki: ' num2str(b)]);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=10: ' num2str(a) ...
    ', Blad: ' num2str(err)]);
a = KwadraturaSimpsonaMain(fun, 100, 100);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=100: ' num2str(a) ...
    ', Blad: ' num2str(err)]);
a = KwadraturaSimpsonaMain(fun, 1000, 500);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=500: ' num2str(a) ...
    ', Blad: ' num2str(err)]);

disp("4. f(x, y) = -527*x^14 + 235.90001*y^10 - 5001*y^2");
fun = @(x, y) -527.*x.^14 + 235.90001.*y.^10 - 5001.*y.^2;
a = KwadraturaSimpsonaMain(fun, 10, 10);
b = integral2(fun, -1, 1, ymin, ymax);
disp(['Faktyczna wartosc calki: ' num2str(b)]);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=10: ' num2str(a) ...
    ', Blad: ' num2str(err)]);
a = KwadraturaSimpsonaMain(fun, 100, 100);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=100: ' num2str(a) ...
    ', Blad: ' num2str(err)]);
a = KwadraturaSimpsonaMain(fun, 1000, 500);
err = b - a;
disp(['Wartosc kwadratury dla xn,yn=500: ' num2str(a) ...
    ', Blad: ' num2str(err)]);

end % function