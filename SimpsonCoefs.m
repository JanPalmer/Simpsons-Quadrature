function coefs = SimpsonCoefs(v_len)
% Autor: Jan Palmer 313429
%
% Funkcja SimpsonCoefs zwraca wektor poziomy zawierajacy wspolczynniki
% jednowymiarowej zlozonej kwadratury Simpsona
% WEJSCIE:
%     v_len - ilosc podprzedzialow kwadratury
% WYJSCIE:
%     coefs - wektor wspolczynnikow

coefs = ones(1, 2*v_len + 1);
coefs(2:2:2*v_len) = 4;
coefs(3:2:2*v_len) = 2;
end % function