#include <math.h>
#include <stdio.h>

int main(int n, char* args[]) {
    int i;
    printf("Number of args: %d\n", n);
    for (i = 0; i < n; i++) {
    printf("%d %s\n",i,args[i]);
    }
}