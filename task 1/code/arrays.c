#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 10000
#define TIMES 1000000

void staticArray() {
    static int arr[N];
    arr[0] = 1;
}

void stackArray() {
    int arr[N];
    arr[0] = 1;
}

void heapArray() {
    int *arr = malloc(N * sizeof(int));
    arr[0] = 1;
    free(arr);
}

int main() {
    clock_t start, end;
    int i;

    start = clock();
    for (i = 0; i < TIMES; i++) {
        staticArray();
    }
    end = clock();
    printf("static: %f\n", (double)(end - start));

    start = clock();
    for (i = 0; i < TIMES; i++) {
        stackArray();
    }
    end = clock();
    printf("stack: %f\n", (double)(end - start));

    start = clock();
    for (i = 0; i < TIMES; i++) {
        heapArray();
    }
    end = clock();
    printf("heap: %f\n", (double)(end - start));

    return 0;
}
