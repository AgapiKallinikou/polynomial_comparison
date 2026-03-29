# Polynomial Comparison: Brute Force vs Horner Method

## Project Overview
This project compares two methods for evaluating the value of a polynomial: the **Brute Force method** and **Horner's method**. The goal is to analyze their performance for random values of \(x\) and polynomial degrees \(n\) ranging from 1 to `max_n`, with \(k\) repetitions for increased accuracy. The results highlight interesting patterns in computation speed and efficiency.

---

## Abstract
The project implements two approaches to compute polynomial values. The Brute Force method evaluates the polynomial directly, while Horner's method applies a nested multiplication approach. Experimental results show that Horner's method is consistently faster, and the difference in execution time correlates with the computational complexity of each method. Additionally, increasing the degree \(n\) of the polynomial generally leads to a decreasing trend in the **speed-up factor**, demonstrating the efficiency advantage of Horner's method as problem size grows.

---

## Introduction
In this project, we generate random polynomial coefficients \(a_i\) and evaluate the polynomial for random values of \(x\). Both methods are tested across multiple degrees \(n\) with \(k\) repetitions to ensure accurate timing measurements. Individual functions for each method are developed and used to systematically compare performance, followed by a main program that automates the evaluation for all degrees up to `max_n`.

---

## Method 1: Brute Force
### Function
The Brute Force function computes the polynomial value directly:
- Generates random \(x\) and coefficients \(a_i\).  
- Iterates through each coefficient to calculate the polynomial value \(y\).  

### Timing
A separate function measures the execution time for \(k\) repetitions of degree \(n\), averaging the results to obtain a reliable estimate of computation time.

---

## Method 2: Horner
### Function
Horner's method evaluates the polynomial using nested multiplication:
P(x) = a<sub>0</sub> + x(a<sub>1</sub> + x(a<sub>2</sub> + ... + x(a<sub>n-1</sub> + x a<sub>n</sub>)...)).
This reduces the number of operations compared to the Brute Force method.

### Timing
Similarly, a timing function averages the execution time over \(k\) repetitions to measure performance accurately.

---

## Comparison
To compare the methods, test functions run both Brute Force and Horner evaluations for degrees 1 to `max_n`. The results are stored in a matrix where the first column shows Brute Force times and the second column shows Horner times. Pre-allocated arrays ensure memory efficiency and consistent timing measurements.

---

## Speed-up Factor
The speed-up factor is calculated as the ratio of Brute Force time to Horner time. This metric quantifies the performance improvement achieved by Horner's method.

---

## Main Program
A main script automates the evaluation:
1. Prompts the user to input `max_n` (maximum degree) and `k` (number of repetitions).  
2. Calls functions to compute polynomial values and measure execution time.  
3. Outputs a matrix of times and a vector of speed-up factors.

---

## Results (Example)
| n   | Brute Force (s) | Horner (s) | Speed-up Factor |
|-----|-----------------|------------|----------------|
| 2   | 3.8775e-05      | 3.7704e-05 | 0.9724         |
| 5   | 5.1615e-05      | 4.8028e-05 | 0.9305         |
| 10  | 7.6690e-05      | 6.9759e-05 | 0.9096         |
| 30  | 1.7606e-04      | 1.5398e-04 | 0.8746         |
| 50  | 2.7641e-04      | 2.3912e-04 | 0.8651         |
| 100 | 5.3539e-04      | 4.5406e-04 | 0.8481         |
| 500 | 2.5880e-03      | 2.1661e-03 | 0.8369         |

> Speed-up factor values are rounded to four decimal places. For full degree ranges, the main script generates complete timing tables automatically.

---

## Conclusions
1. Horner's method consistently outperforms the Brute Force approach.  
2. The average speed-up factor across tests is approximately 0.891.  
3. Increasing polynomial degree \(n\) generally leads to a decreasing speed-up factor, reflecting the efficiency advantage of Horner’s method.  
4. The difference in speed arises because Brute Force involves exponentiation, multiplication, and addition, while Horner’s method requires only multiplication and addition operations.

---

## Academic Context & Author

These numerical analysis scripts were developed as part of the coursework at the **National and Kapodistrian University of Athens (NKUA)**.

* **Author:** Agapi Kallinikou
* **Academic Year:** 2022 - 2023
