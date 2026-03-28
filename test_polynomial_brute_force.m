function t = test_polynomial_brute_force(n, k)
tic;
for i = 1:k
    polynomial_brute_force(n);
end
t = toc/k;
