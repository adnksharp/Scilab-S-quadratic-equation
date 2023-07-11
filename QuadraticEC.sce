a = [];
printf("Ecuación de segundo grado.\n");
x = input("-->", "s");
x = strsubst(x, " ", "");
printf("...\n");

in_k = strstr(x, "x^2");
if in_k ~= "" then
	k = strsplit(x, "x^2");
	if size(k, "*") > 1 then
		if k(1) == "" || k(1) == "+" || k(1) == "-" then
			a(1) = "1";
		else
			a(1) = k(1);
		end
		x = k(2);
	end
else
	a(1) = "0";
end

in_k = strstr(x, "x");
if in_k ~= "" then
	k = strsplit(x, "x");
	if size(k, "*") > 1 then
		if k(1) == "" || k(1) == "+" || k(1) == "-" then
			a(2) = "1";
		else
			a(2) = k(1);
		end
		x = k(2);
	end
else
	a(2) = "0";
end

if length(x) > 0 then
	a(3) = x;
else
	a(3) = "0";
end

for i = 1:3
	a(i) = strsubst(a(i), "(", "");
	a(i) = strsubst(a(i), ")", "");
	a(i) = strsubst(a(i), "%pi", "3.141592653589");
	a(i) = strsubst(a(i), "%e", "2.718281828459");
	k = strsplit(a(i), "/");
	if size(k, "*") > 1 then
		b(i) = strtod(k(1)) / strtod(k(2));
	else
		k = strsplit(a(i), "*");
		if size(k, "*") > 1 then
			b(i) = strtod(k(1)) * strtod(k(2));
		else
			b(i) = strtod(a(i));
		end
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
