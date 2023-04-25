#include <stdio.h>
#include <stdlib.h>
// Hailstone numbers (Sterling numbers)
int main(int n, char* args[]) {
int num;
int count = 0;
if ( (n != 2) || ( (num = atoi(args[1])) < 1) ) {
printf("Usage: ./hailstone posInt\n");
return 1;
}
printf("Starting number: %d\n", num);
while (num != 1) {
    if(num % 2 == 0){

        num /= 2;
        count += 1;
        printf(" %d\n", num);
    }
    else {
        num = num * 3 + 1;
        count += 1;
        printf(" %d\n", num);
    }
}
printf(" %d Hailstone sequence length\n", count);

return 0;
}