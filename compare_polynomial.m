function A = compare_polynomial(max_n, k)
A = zeros(max_n, 2);
for n = 1:max_n
    A(n, 1) = test_polynomial_brute_force(n, k);
    A(n, 2) = test_polynomial_horner(n, k);
end
