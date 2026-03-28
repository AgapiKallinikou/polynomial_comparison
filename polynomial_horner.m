function polynomial_horner(n)
a = rand(1, n+1);
x = rand;
y = a(n+1);
for i = n:-1:1
    y = a(i)+x*y;
end
