/*--FizzBuzz–â‘è--*/
#include<stdio.h>
#include<stdlib.h>

#define N 100

int main(void){
  int i;
  
  for(i = 0; i < N; i++){
    if(i % 10 == 1)
      putchar('\n');
    if(i % 3 == 0 && i % 5 == 0)
      printf(" FizzBuzz");
    else if(i % 3 == 0)
      printf("     Fizz");
    else if(i % 5 == 0)
      printf("     Buzz");
    else
      printf("%8d", i);
  }
  return 0;
}	
