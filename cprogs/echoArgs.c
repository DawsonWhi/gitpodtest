#include <stdio.h>
#include <stdlib.h>

int main(int n, char* args[]) {
	printf("number of arguments: %d\n", n);
    for(int i = 0; i < sizeof(args[i]); i++)
    {
        printf("%d %s\n", i, args[i]);
    }
}
