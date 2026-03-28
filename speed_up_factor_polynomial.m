function suf = speed_up_factor_polynomial(A)
max_n = size(A, 1);
suf = zeros(max_n, 1);
for i = 1:max_n
    suf(i) = A(i, 2)/A(i, 1);
end
