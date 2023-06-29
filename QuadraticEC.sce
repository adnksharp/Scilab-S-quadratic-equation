a = [];
printf("Ecuación de segundo grado.\n");
x = input("-->", "s");
x = strsubst(x, " ", "");
printf("...\n");


k = strsplit(x, "x^2");
if size(k, "*") > 1 then
	a(1) = k(1);
	x = k(2);
else
	a(1) = "0";
end

k = strsplit(x, "x");
if size(k, "*") > 1 then
	a(2) = k(1);
	x = k(2);
else
	a(2) = "0";
end

if length(x) > 0 then
	a(3) = x;
else
	a(3) = "0";
end


b = [];
for i = 1:3,
	k = strtod(strsplit(a(i), "/"));
	if length(k) > 1 then
		b(i) = k(1) / k(2);
	else
		b(i) = k(1);
	end
end
a = b;

printf("%sx^2 + %sx + %s\n\n", string(a(1)), string(a(2)), string(a(3)));
D = (a(2)*a(2)) - (4*a(1)*a(3));
if D > 0 then
	D = sqrt(D);
	out = [ (-a(2) - D)/(2*a(1)), (-a(2) + D)/(2*a(1)) ];
	printf("x_1 = %s\tx_2 = %s\n", string(out(1)), string(out(2)));
else
	printf("La ecuación no tiene raíces reales.");
end
