function test02_funkcje_nieparzyste()
% Autor: Jan Palmer 313429
% 
% Test sprawdza zwracane przez kwadrature wartosci dla losowych wielomianow
% 7. stopnia. Ze wzgledu na przedzial calkowania oraz nieparzystosc wielo-
% mianow, wartosci te powinny byc bliskie zeru. 

for i = 1:5
    a = -10 + 20*rand();
    b = -20 + 40*rand();
    c = -50 + 100*rand();
    d = -100 + 200*rand();
    e = -500 + 1000*rand();
    fun = @(x, y) a*x + b*x^3 + c*x^5 + d*x^7 + e*y + d*y^3 + c*y^5 + ...
        b*y^7;
    val = KwadraturaSimpsonaMain(fun, 500, 500);
    fprintf(" Wzor wielomianu nr %d:\n" + ...
        "(%f)x+(%f)x^3+(%f)x^5+(%f)x^7" + ...
        "(%f)y+(%f)y^3+(%f)y^5+(%f)y^7\n",...
        i, a, b, c, d, e, d, c, b);
    disp(['Obliczona wartosc kwadratury: ' ...
        num2str(val)]);
end % for

end