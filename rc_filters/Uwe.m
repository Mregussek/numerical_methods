function x = Uwe(t, wariant)

switch wariant
    case 1
        % generowanie fali prostokatnej
        x = prost_gen(t);
    case 2
        % generowanie fali sinusoidalnej
        x = 0.5 + 0.5 * cos(2 * pi * t);
end

end