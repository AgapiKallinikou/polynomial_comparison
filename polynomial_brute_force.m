function polynomial_brute_force(n)
a = rand(1, n+1);
x = rand;
y = a(1);
for i = 1:n
    y = y+a(i+1)*x^i;
end
