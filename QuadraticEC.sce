x = zeros(3);
discriminant = 0;
output = [];
for c = 1:3,
    out = "Coeficiente " + ascii(96+c) + " de la ecuación cuadratica: ";
    x(c) =strtod(input(out, "s")); 
end

discriminant = (x(2)*x(2)) - (4*x(1)*x(3));

if discriminant > 0 then
    discriminant = sqroot(discriminant);
    output(1) = (-x(2) - discriminant)/(2*x(1));
    output(2) = (-x(2) + discriminant)/(2*x(1));
    printf("\n%f x^2 + %f x + %f\n\nx1: %f \t x2: %f", x(1), x(2), x(3), output(1), output(2))
else
    printf( "La ecuación no tiene raíces reales." );
end
