function t = test_polynomial_horner(n, k)
tic;
for i = 1:k
    polynomial_horner(n);
end
t = toc/k;
