max_n = input('Enter max polynomial degree to test: ');
k = input('Enter number of tests to run for every degree: ');
A = compare_polynomial(max_n, k)
suf = speed_up_factor_polynomial(A)
