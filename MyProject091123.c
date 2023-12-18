#include <stdio.h>
#include <stdlib.h>
#include "swap.c"

#define EXIT_SUCCESS 0
#define EXIT_FAILURE 1

int main(void){
    FILE *file;
    file = fopen("res.txt", "w");
    int a, b;
    printf("Введитег два числа a и b\n");
    scanf("%d%d", &a, &b);
    printf("a=%d, b=%d\n", a, b);
    swap(&a,&b);
    printf("a=%d, b=%d\n", a, b);
    if(puts("Hello, World!")==EOF)
    {
        return EXIT_FAILURE;
    }
    //printf("Hello, World!");
    else
    {
        return EXIT_SUCCESS;
    }
}
