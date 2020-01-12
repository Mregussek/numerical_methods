function [c, iteration_counter] = regula_falsi(a, b, eps)
    % Metoda siecznych 1
    % f - nasza funkcja anonimowa, przyklad: f = @(x) x^2 - 9
    % a - punkt na ujemnej czesci osi X
    % b - punkt na dodatniej czesci osi X

iteration_counter = 0; % licznik iteracji, zaczynamy od zera
c = 0; f_c = 1000; % startowe dane, ktore nie maja wiekszego znaczenia tutaj
f_a = f(a); 
f_b = f(b);

if f_a * f_b > 0
    disp('Error! Funkcje sa tych samych znakow! Nie ma miejsc zerowych w zadanym przedziale!');
    error('Wychodzimy z funkcji!');
end

while abs(f_c) > eps && iteration_counter < 10000 && f_c ~= 0
    % |f(c)| > epsilon, kiedy nasz f(c) bedzie wystarczajaco male (zblizone do miejsca zerowego) petla sie skonczy
    % iteration_counter < 100, kiedy liczba iteracji bedzie wieksza od 100 to nie chcemy dalej liczyc
    % f(c) rozne od zera, kiedy f(c) bedzie rowne zero to mamy dokladne miejsce zerowe, wiec mozna przerwac
    
    f_a = f(a); % wyliczamy wartosc funkcji w pkt a
    f_b = f(b); % to samo tylko w b
    
    % stosujemy blok try-catch dla mozliwego bledu
    try
        c = b - f_b * ((b - a) / (f_b - f_a)); % wyliczamy nowe f(c) i ponownie sprawdzamy warunki
    catch
        fprintf('Error! - Mianownik jest rowny 0 dla a = %f, b = %f\n', a, b);
        break
    end
    
    f_c = f(c);
    
    %disp('----------------------');
    %fprintf('a = %f, b = %f, c = %f\n', a, b, c); % dla kontroli wyswietlam wartosci
    %fprintf('f(a) = %f, f(b) = %f, f(c) = %f\n', f_a, f_b, f_c); 
    
    % sprawdzamy znaki funkcji, jedna musi byc dodatnia a druga ujemna,
    % zeby wywolac opcje 'else'
    if f_b * f_a > 0
        b = c;
    else
        a = c;
    end
    
    iteration_counter = iteration_counter + 1;
end
end
