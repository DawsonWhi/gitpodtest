#include<stdio.h>

int main(int argc, char **argv) { 
    printf("%d\n", argc);
    for(int i = 0; i < 4; i++)
    {
        printf("%p\n", argv);
    }
}
