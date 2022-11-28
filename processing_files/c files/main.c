#include <stdio.h>
#include <getopt.h>
#include <string.h>
#include <pthread.h>
#include <stdbool.h>

extern double F (double x);
extern double FindRoot (double (*f) (double), double a, double b, double eps);
extern double GetTimeOfFindRoot();
extern bool IsErrorCorrect(double error);
extern double GetTimeOfIsErrorCorrect();
extern void GetCorrectInterval(double* a, double* b);
extern double GetTimeOfGetCorrectInterval();
extern void GetRandomError(double* eps);
extern double GetTimeOfGetRandomError();

int main(int argc, char **argv) {
    clock_t begin = clock();
    bool from_file = false;
    char *input_file, *output_file;
    FILE *input, *output = NULL;
    double a = 2, b = 3, eps, x;
    GetCorrectInterval(&a, &b);
    if (a != 2 || b != 3) {
        printf("Изначальный интревал некорректный. Поэтому поиск корня будет вестись в диапозоне [%lf, %lf]\n", a, b);
    }

    if (argc == 3) {
        for (int index = optind; index < argc; index++) {
            if (index == 1) {
                input_file = argv[index];
            } else if (index == 2) {
                output_file = argv[index];
            }
        }
        input = fopen(input_file, "r");
        if (input == NULL) {
            printf("Файла не существует\n");
            return 0;
        }
        from_file = true;
    } else if (argc != 1) {
        printf("Указано недопустимое кол-во параметров! (консольных параметров либо не должно быть, либо должны указываться пути входного и выходного файлов)\n");
        return 0;
    }

    char s = 0;
    if (!from_file) {
        printf("Введите способ приваивания точности поиска корня: ");
        scanf("%c", &s);
    } else {
        fscanf(input, "%c", &s);
    }

    if (s == 'I') {
        if (!from_file) {
            printf("Введите точность поиска корня: ");
            scanf("%lf", &eps);
        } else {
            fscanf(input, "%lf", &eps);
            fclose(input);
        }
    } else if (s == 'G') {
        GetRandomError(&eps);
        printf("Сгенерированная точночть = %lf\n", eps);
    } else {
        printf("Неизвестная команда!");
        return 0;
    }

    if (IsErrorCorrect(eps)) {
        x = FindRoot(F, a, b, eps);
        if (!from_file) {
            printf("x = %lf\n", x);
        } else {
            char out[300] = "\n\nВывод\nx = ", num[100];
            sprintf(num, "%lf", x);
            strcat(out, num);
            strcat(out, "\n");
            output = fopen(output_file, "w");
            if (output == NULL) {
                printf("Файла не существует\n");
                return 0;
            }
            fputs(out, output);
        }
    } else {
        printf("Точность поиска корня должна быть <= 0.001 и >= 0.00000001\n");
    }
    clock_t end = clock();
    double time_without_input_output = GetTimeOfFindRoot() + GetTimeOfGetCorrectInterval() + GetTimeOfGetRandomError() + GetTimeOfIsErrorCorrect();
    if (!from_file) {
        printf("Время выполнения программы без input/output = %lf секунд(ы), а с input/output = %lf секунд(ы)\n",
               time_without_input_output, (double) (end - begin) / CLOCKS_PER_SEC);
    } else {
        char o[1000] = "Время выполнения программы без input/output =", o1[300] = " секунд(ы), а с input/output = ";
        char o2[300] = " секунд(ы)\n", num1[100], num2[100];
        sprintf(num1, "%lf", time_without_input_output);
        sprintf(num2, "%lf", (double) (end - begin) / CLOCKS_PER_SEC);
        strcat(o, num1);
        strcat(o, o1);
        strcat(o, num2);
        strcat(o, o2);
        fputs(o, output);
    }
    return 0;
}
