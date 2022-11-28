#include <stdbool.h>
#include <math.h>
#include <stdlib.h>
#include <pthread.h>

double F (double x) {
    return pow(2, x * x + 1) + x - 3;
}

double FindRoot (double (*f) (double), double a, double b, double eps) {
    double c;
    while (fabs(f(b) - f(a)) > eps) {
        c = (f(b) * a - f(a) * b) / (f(b) - f(a));
        if ((f(a) * f(c)) > 0) {
            a = c;
        } else {
            b = c;
        }
    }
    return c;
}

double GetTimeOfFindRoot() {
    clock_t b = clock();
    FindRoot(F, 0, 1, 0.00001);
    clock_t e = clock();
    return (double)(e - b) / CLOCKS_PER_SEC;
}

bool IsIntervalCorrect(double a, double b) {
    if (F(a) * F(b) > 0) {
        return false;
    }

    return true;
}

bool IsErrorCorrect(double error) {
    if (error > 0.001 || error < 0.00000001) {
        return false;
    }

    return true;
}

double GetTimeOfIsErrorCorrect() {
    clock_t b = clock();
    IsErrorCorrect(0.0001);
    clock_t e = clock();
    return (double)(e - b) / CLOCKS_PER_SEC;
}

void GetCorrectInterval(double* a, double* b) {
    bool k = IsIntervalCorrect(*a, *b);
    if (!k) {
        *a = *a - 1;
        *b = *b - 1;
        return GetCorrectInterval(a, b);
    }
}

double GetTimeOfGetCorrectInterval() {
    double a = 2, b = 3;
    clock_t beg = clock();
    GetCorrectInterval(&a, &b);
    clock_t e = clock();
    return (double)(e - beg) / CLOCKS_PER_SEC;
}

void GetRandomError(double* eps) {
    srand(time(NULL));
    *eps = (double) rand() / RAND_MAX * (0.001 - 0.00000001) + 0.00000001;
}

double GetTimeOfGetRandomError() {
    double eps = 0.00001;
    clock_t beg = clock();
    GetRandomError(&eps);
    clock_t e = clock();
    return (double)(e - beg) / CLOCKS_PER_SEC;
}

